import '../config/api_config.dart';
import '../models/book.dart';
import 'api_client.dart';

class BookService {
  final ApiClient _apiClient;

  BookService(this._apiClient);

  Future<Map<String, dynamic>> searchBookByIsbn(String isbn) async {
    final response = await _apiClient.dio.post(
      ApiConfig.searchBook,
      data: {'book_isbn': isbn},
    );

    final data = response.data;
    if (data['data'] != null &&
        data['data']['items'] != null &&
        (data['data']['items'] as List).isNotEmpty) {
      final item = data['data']['items'][0];
      return {
        'title': item['title'],
        'author': item['author'],
        'thumbnail_url': item['image'],
      };
    }

    return {};
  }

  Future<void> addBook(Book book) async {
    await _apiClient.dio.post(ApiConfig.addBook, data: book.toJson());
  }

  Future<List<Book>> getBooks() async {
    final response = await _apiClient.dio.get(ApiConfig.getBooks);

    // Handle the case where the response is a Map (common API wrapper)
    if (response.data is Map<String, dynamic>) {
      final data = response.data['data'];
      if (data is List) {
        return data.map((json) => Book.fromJson(json)).toList();
      }
    }

    // Handle the case where the response is directly a List
    if (response.data is List) {
      return (response.data as List)
          .map((json) => Book.fromJson(json))
          .toList();
    }

    return [];
  }

  Future<Book> updateBook({
    required String bookId,
    String? title,
    String? author,
    String? bookIsbn,
    String? thumbnailUrl,
    int? status,
  }) async {
    final data = <String, dynamic>{};
    if (title != null) data['title'] = title;
    if (author != null) data['author'] = author;
    if (bookIsbn != null) data['book_isbn'] = bookIsbn;
    if (thumbnailUrl != null) data['thumbnail_url'] = thumbnailUrl;
    if (status != null) data['status'] = status;

    final response = await _apiClient.dio.put(
      ApiConfig.fullUpdateBookUrl(bookId),
      data: data,
    );

    if (response.data is Map<String, dynamic>) {
      final responseData = response.data['data'];
      if (responseData != null) {
        return Book.fromJson(responseData);
      }
    }

    throw Exception('도서 수정에 실패했습니다');
  }

  Future<void> deleteBook(String bookId) async {
    await _apiClient.dio.delete(ApiConfig.fullDeleteBookUrl(bookId));
  }
}
