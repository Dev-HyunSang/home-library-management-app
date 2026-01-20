import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../services/api_client.dart';
import '../services/auth_service.dart';
import '../services/book_service.dart';
import '../services/storage_service.dart';

part 'service_providers.g.dart';

@riverpod
StorageService storageService(StorageServiceRef ref) {
  return StorageService();
}

@riverpod
ApiClient apiClient(ApiClientRef ref) {
  final storageService = ref.watch(storageServiceProvider);
  return ApiClient(storageService);
}

@riverpod
AuthService authService(AuthServiceRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  return AuthService(apiClient);
}

@riverpod
BookService bookService(BookServiceRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  return BookService(apiClient);
}
