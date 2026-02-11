import '../config/api_config.dart';
import '../models/review.dart';
import 'api_client.dart';

class ReviewService {
  final ApiClient _apiClient;

  ReviewService(this._apiClient);

  Future<List<Review>> getReviews(String isbn) async {
    final response = await _apiClient.dio.get(
      ApiConfig.fullGetReviewsUrl(isbn),
    );

    if (response.data is Map<String, dynamic>) {
      final data = response.data['data'];
      if (data is List) {
        return data.map((json) => Review.fromJson(json)).toList();
      }
    }

    if (response.data is List) {
      return (response.data as List)
          .map((json) => Review.fromJson(json))
          .toList();
    }

    return [];
  }

  Future<List<Review>> getMyReviews() async {
    final response = await _apiClient.dio.get(
      ApiConfig.fullMyReviewsUrl,
    );

    if (response.data is Map<String, dynamic>) {
      final data = response.data['data'];
      if (data is List) {
        return data.map((json) => Review.fromJson(json)).toList();
      }
    }

    if (response.data is List) {
      return (response.data as List)
          .map((json) => Review.fromJson(json))
          .toList();
    }

    return [];
  }

  Future<Review> createReview({
    required String isbn,
    required String content,
    required int rating,
    bool isPublic = true,
  }) async {
    final response = await _apiClient.dio.post(
      ApiConfig.fullCreateReviewUrl(isbn),
      data: {
        'content': content,
        'rating': rating,
        'is_public': isPublic,
      },
    );

    if (response.data is Map<String, dynamic>) {
      final data = response.data['data'];
      if (data != null) {
        return Review.fromJson(data);
      }
    }

    throw Exception('리뷰 생성에 실패했습니다');
  }

  Future<Review> updateReview({
    required String isbn,
    required String reviewId,
    required String content,
    required int rating,
    bool isPublic = true,
  }) async {
    final response = await _apiClient.dio.put(
      ApiConfig.fullUpdateReviewUrl(isbn, reviewId),
      data: {
        'content': content,
        'rating': rating,
        'is_public': isPublic,
      },
    );

    if (response.data is Map<String, dynamic>) {
      final data = response.data['data'];
      if (data != null) {
        return Review.fromJson(data);
      }
    }

    throw Exception('리뷰 수정에 실패했습니다');
  }

  Future<void> deleteReview(String reviewId) async {
    await _apiClient.dio.delete(
      ApiConfig.fullDeleteReviewUrl(reviewId),
    );
  }
}
