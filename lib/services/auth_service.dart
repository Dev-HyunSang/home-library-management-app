import 'package:dio/dio.dart';

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
    try {
      final response = await _apiClient.dio.post(
        ApiConfig.signUp,
        data: request.toJson(),
      );

      return User.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 409) {
        throw Exception('동일한 메일 주소가 이미 사용중입니다.');
      }
      throw Exception('회원가입에 실패했습니다');
    }
  }

  Future<({bool isAvailable, String message})> checkNickname(
      String nickname) async {
    try {
      final response = await _apiClient.dio.get(
        ApiConfig.checkNickname,
        queryParameters: {'nickname': nickname},
      );

      if (response.data is Map) {
        final isSuccess = response.data['is_success'] == true;
        final message = (response.data['message'] ?? '') as String;
        return (isAvailable: isSuccess, message: message);
      }
      return (isAvailable: false, message: '알 수 없는 오류가 발생했습니다');
    } on DioException catch (e) {
      if (e.response?.data is Map) {
        final message = (e.response?.data['message'] ?? '') as String;
        return (isAvailable: false, message: message);
      }
      return (isAvailable: false, message: '서버 연결에 실패했습니다');
    } catch (e) {
      return (isAvailable: false, message: '오류가 발생했습니다');
    }
  }

  Future<void> signOut() async {
    await _apiClient.dio.post(ApiConfig.signOut);
  }

  Future<User> getCurrentUser() async {
    final response = await _apiClient.dio.post(ApiConfig.me);
    return User.fromJson(response.data);
  }

  Future<void> requestPasswordReset(String email) async {
    await _apiClient.dio.post(
      ApiConfig.forgotPassword,
      data: {'email': email},
    );
  }

  Future<void> sendVerificationEmail(String email) async {
    try {
      await _apiClient.dio.get(ApiConfig.fullVerifyEmailUrl(email));
    } on DioException catch (e) {
      if (e.response?.statusCode == 409) {
        throw Exception('이미 사용 중인 이메일입니다.');
      }
      throw Exception('인증 메일 발송에 실패했습니다');
    }
  }

  Future<bool> verifyEmailCode(String email, String code) async {
    final response = await _apiClient.dio.post(
      ApiConfig.verifyCode,
      data: {'email': email, 'code': code},
    );

    if (response.data is Map) {
      return response.data['is_success'] == true;
    }
    return false;
  }
}
