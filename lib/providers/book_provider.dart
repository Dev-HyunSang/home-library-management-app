import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/book.dart';
import 'service_providers.dart';

part 'book_provider.g.dart';

@riverpod
class BookList extends _$BookList {
  @override
  Future<List<Book>> build() async {
    final bookService = ref.watch(bookServiceProvider);
    return await bookService.getBooks();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final bookService = ref.read(bookServiceProvider);
      return await bookService.getBooks();
    });
  }

  Future<void> addBookFromIsbn(String isbn) async {
    final bookService = ref.read(bookServiceProvider);

    final searchResult = await bookService.searchBookByIsbn(isbn);

    final book = Book(
      title: searchResult['title'] ?? 'Unknown',
      author: searchResult['author'] ?? 'Unknown',
      bookIsbn: isbn,
      thumbnailUrl: searchResult['thumbnail_url'],
    );

    await bookService.addBook(book);
    await refresh();
  }

  Future<void> addBook(Book book) async {
    final bookService = ref.read(bookServiceProvider);
    await bookService.addBook(book);
    await refresh();
  }

  Future<void> deleteBook(String bookId) async {
    final bookService = ref.read(bookServiceProvider);
    await bookService.deleteBook(bookId);
    await refresh();
  }
}
