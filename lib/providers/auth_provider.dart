import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/auth_request.dart';
import '../models/user.dart';
import 'service_providers.dart';

part 'auth_provider.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  Future<User?> build() async {
    final storageService = ref.watch(storageServiceProvider);
    final token = await storageService.getAccessToken();

    if (token == null) {
      return null;
    }

    try {
      final authService = ref.watch(authServiceProvider);
      return await authService.getCurrentUser();
    } catch (e) {
      await storageService.deleteTokens();
      return null;
    }
  }

  Future<void> signIn(String email, String password) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final authService = ref.read(authServiceProvider);
      final storageService = ref.read(storageServiceProvider);

      final request = LoginRequest(email: email, password: password);
      final response = await authService.signIn(request);

      await storageService.saveAccessToken(response.accessToken);
      if (response.refreshToken != null) {
        await storageService.saveRefreshToken(response.refreshToken!);
      }

      return await authService.getCurrentUser();
    });
  }

  Future<void> signUp({
    required String nickName,
    required String email,
    required String password,
    bool isPublished = true,
    required bool isTermsAgreed,
  }) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final authService = ref.read(authServiceProvider);
      final storageService = ref.read(storageServiceProvider);

      final request = RegisterRequest(
        nickName: nickName,
        email: email,
        password: password,
        isPublished: isPublished,
        isTermsAgreed: isTermsAgreed,
      );

      // 1. Sign Up (returns User, no tokens)
      await authService.signUp(request);

      // 2. Automatically Sign In to get tokens
      final loginRequest = LoginRequest(email: email, password: password);
      final loginResponse = await authService.signIn(loginRequest);

      // 3. Save tokens
      await storageService.saveAccessToken(loginResponse.accessToken);
      if (loginResponse.refreshToken != null) {
        await storageService.saveRefreshToken(loginResponse.refreshToken!);
      }

      // 4. Return user
      return await authService.getCurrentUser();
    });
  }

  Future<void> signOut() async {
    final storageService = ref.read(storageServiceProvider);
    final authService = ref.read(authServiceProvider);

    try {
      await authService.signOut();
    } catch (e) {
      // Ignore errors on sign out API call
    }

    await storageService.deleteTokens();
    state = const AsyncValue.data(null);
  }
}

@riverpod
bool isAuthenticated(IsAuthenticatedRef ref) {
  final authState = ref.watch(authNotifierProvider);
  return authState.value != null;
}
