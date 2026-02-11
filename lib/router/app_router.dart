import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/auth_provider.dart';
import '../models/book.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/register_screen.dart';
import '../screens/auth/forgot_password_screen.dart';
import '../screens/auth/terms_screen.dart';
import '../screens/book/book_detail_screen.dart';
import '../screens/main/main_screen.dart';
import '../screens/scanner/barcode_scanner_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final isAuthenticated = ref.watch(isAuthenticatedProvider);

  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      final isAuthPage = state.matchedLocation == '/login' ||
          state.matchedLocation == '/register' ||
          state.matchedLocation == '/forgot-password' ||
          state.matchedLocation == '/terms';

      if (!isAuthenticated && !isAuthPage) {
        return '/login';
      }

      if (isAuthenticated && isAuthPage) {
        return '/home';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: '/register',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const RegisterScreen(),
        ),
      ),
      GoRoute(
        path: '/forgot-password',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const ForgotPasswordScreen(),
        ),
      ),
      GoRoute(
        path: '/home',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const MainScreen(),
        ),
      ),
      GoRoute(
        path: '/book-detail',
        pageBuilder: (context, state) {
          final extra = state.extra;
          final Book book;
          if (extra is Book) {
            book = extra;
          } else if (extra is Map<String, dynamic>) {
            book = Book.fromJson(extra);
          } else {
            throw Exception('Invalid book data');
          }
          return MaterialPage(
            key: state.pageKey,
            child: BookDetailScreen(book: book),
          );
        },
      ),
      GoRoute(
        path: '/scanner',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const BarcodeScannerScreen(),
        ),
      ),
      GoRoute(
        path: '/terms',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const TermsScreen(),
        ),
      ),
    ],
  );
});
