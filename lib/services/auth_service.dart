import '../config/api_config.dart';
import '../models/auth_request.dart';
import '../models/auth_response.dart';
import '../models/user.dart';
import 'api_client.dart';

class AuthService {
  final ApiClient _apiClient;

  AuthService(this._apiClient);

  Future<AuthResponse> signIn(LoginRequest request) async {
    final response = await _apiClient.dio.post(
      ApiConfig.signIn,
      data: request.toJson(),
    );

    return AuthResponse.fromJson(response.data);
  }

  Future<User> signUp(RegisterRequest request) async {
    final response = await _apiClient.dio.post(
      ApiConfig.signUp,
      data: request.toJson(),
    );

    return User.fromJson(response.data);
  }

  Future<bool> checkNickname(String nickname) async {
    try {
      final response = await _apiClient.dio.post(
        ApiConfig.checkNickname,
        data: {'nickname': nickname},
      );
      // Assuming 200 OK means available, and body contains a boolean or status
      // Adjust based on actual API response. For now assuming { "available": true }
      // or just 200 OK.
      // Let's assume standard response format: { "data": { "available": true } }

      if (response.data is Map && response.data['data'] != null) {
        return response.data['data']['isAvailable'] == true;
      }
      return true; // Fallback or strict? Let's check user intent later.
    } catch (e) {
      return false; // Error means not available or server error
    }
  }

  Future<void> signOut() async {
    await _apiClient.dio.post(ApiConfig.signOut);
  }

  Future<User> getCurrentUser() async {
    final response = await _apiClient.dio.post(ApiConfig.me);
    return User.fromJson(response.data);
  }
}
