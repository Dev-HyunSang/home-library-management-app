class ApiConfig {
  // Base URL
  static const String baseUrl = 'http://192.168.219.104:3000';

  // API Endpoints
  static const String signUp = '/api/users/signup';
  static const String signIn = '/api/users/signin';
  static const String signOut = '/api/users/signout';
  static const String me = '/api/users/me';
  static const String refreshToken = '/api/auth/refresh';
  static const String checkNickname = '/api/users/check-nickname';
  static const String forgotPassword = '/api/users/forgot-password';

  // Book Endpoints
  static const String searchBook = '/api/books/search';
  static const String addBook = '/api/books/add';
  static const String getBooks = '/api/books/get';
  static const String deleteBook = '/api/books/delete';

  // Full URL helpers
  static String get fullSignUpUrl => '$baseUrl$signUp';
  static String get fullSignInUrl => '$baseUrl$signIn';
  static String get fullSignOutUrl => '$baseUrl$signOut';
  static String get fullMeUrl => '$baseUrl$me';
  static String get fullRefreshTokenUrl => '$baseUrl$refreshToken';
  static String get fullSearchBookUrl => '$baseUrl$searchBook';
  static String get fullAddBookUrl => '$baseUrl$addBook';
  static String get fullGetBooksUrl => '$baseUrl$getBooks';

  static String fullDeleteBookUrl(String bookId) =>
      '$baseUrl$deleteBook/$bookId';
}
