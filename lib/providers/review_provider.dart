import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/review.dart';
import 'service_providers.dart';

part 'review_provider.g.dart';

@riverpod
class BookReviews extends _$BookReviews {
  @override
  Future<List<Review>> build(String isbn) async {
    final reviewService = ref.watch(reviewServiceProvider);
    return await reviewService.getReviews(isbn);
  }

  Future<void> createReview({
    required String content,
    required int rating,
    bool isPublic = true,
  }) async {
    final reviewService = ref.read(reviewServiceProvider);
    await reviewService.createReview(
      isbn: isbn,
      content: content,
      rating: rating,
      isPublic: isPublic,
    );
    ref.invalidateSelf();
  }
}

@riverpod
class MyReviews extends _$MyReviews {
  @override
  Future<List<Review>> build() async {
    final reviewService = ref.watch(reviewServiceProvider);
    return await reviewService.getMyReviews();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }

  Future<void> updateReview({
    required String isbn,
    required String reviewId,
    required String content,
    required int rating,
    bool isPublic = true,
  }) async {
    final reviewService = ref.read(reviewServiceProvider);
    await reviewService.updateReview(
      isbn: isbn,
      reviewId: reviewId,
      content: content,
      rating: rating,
      isPublic: isPublic,
    );
    ref.invalidateSelf();
  }

  Future<void> deleteReview(String reviewId) async {
    final reviewService = ref.read(reviewServiceProvider);
    await reviewService.deleteReview(reviewId);
    ref.invalidateSelf();
  }
}
