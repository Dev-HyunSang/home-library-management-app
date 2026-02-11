class ApiConfig {
  // Base URL
  static const String baseUrl = 'http://myhomelibrary.japaneast.cloudapp.azure.com:3000';

  // API Endpoints
  static const String signUp = '/api/users/signup';
  static const String signIn = '/api/users/signin';
  static const String signOut = '/api/users/signout';
  static const String me = '/api/users/me';
  static const String refreshToken = '/api/auth/refresh';
  static const String checkNickname = '/api/users/check/nickname';
  static const String forgotPassword = '/api/users/forgot-password';
  static const String verifyEmail = '/api/users/verify/email';
  static const String verifyCode = '/api/users/verify/code';

  // Book Endpoints
  static const String searchBook = '/api/books/search';
  static const String addBook = '/api/books/add';
  static const String getBooks = '/api/books/get';
  static const String getBook = '/api/books/get';
  static const String updateBook = '/api/books/update';
  static const String deleteBook = '/api/books/delete';

  // Review Endpoints
  static const String reviews = '/api/reviews';
  static const String myReviews = '/api/reviews/me';

  // Full URL helpers
  static String get fullSignUpUrl => '$baseUrl$signUp';
  static String get fullSignInUrl => '$baseUrl$signIn';
  static String get fullSignOutUrl => '$baseUrl$signOut';
  static String get fullMeUrl => '$baseUrl$me';
  static String get fullRefreshTokenUrl => '$baseUrl$refreshToken';
  static String get fullSearchBookUrl => '$baseUrl$searchBook';
  static String get fullAddBookUrl => '$baseUrl$addBook';
  static String get fullGetBooksUrl => '$baseUrl$getBooks';
  static String fullGetBookUrl(String userId, String bookId) =>
      '$baseUrl$getBook/$userId/$bookId';

  static String fullUpdateBookUrl(String bookId) =>
      '$baseUrl$updateBook/$bookId';
  static String fullDeleteBookUrl(String bookId) =>
      '$baseUrl$deleteBook/$bookId';

  static String fullGetReviewsUrl(String isbn) => '$baseUrl$reviews/$isbn';
  static String fullCreateReviewUrl(String isbn) => '$baseUrl$reviews/$isbn';
  static String get fullMyReviewsUrl => '$baseUrl$myReviews';
  static String fullUpdateReviewUrl(String isbn, String reviewId) =>
      '$baseUrl$reviews/$isbn/$reviewId';
  static String fullDeleteReviewUrl(String reviewId) => '$baseUrl$reviews/$reviewId';
  static String fullVerifyEmailUrl(String email) => '$baseUrl$verifyEmail/$email';
}
