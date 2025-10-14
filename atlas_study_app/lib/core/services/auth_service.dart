import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/api_config.dart';
import '../models/auth.dart';

class AuthService {
  final Dio _dio;
  final SharedPreferences _prefs;

  AuthService(this._dio, this._prefs);

  // Login user
  Future<AuthResponse> login(String email, String password) async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.authEndpoint}/login',
        data: LoginRequest(email: email, password: password).toJson(),
      );

      final authResponse = AuthResponse.fromJson(response.data);
      
      // Store tokens
      await _prefs.setString('access_token', authResponse.accessToken);
      await _prefs.setString('refresh_token', authResponse.refreshToken);
      
      return authResponse;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Signup user
  Future<User> signup(String email, String password, {String? fullName}) async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.authEndpoint}/signup',
        data: SignupRequest(email: email, password: password, fullName: fullName).toJson(),
      );

      return User.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Get current user
  Future<User?> getCurrentUser() async {
    final token = await getAccessToken();
    if (token == null) return null;

    try {
      final response = await _dio.get(
        '${ApiConfig.baseUrl}/user/me',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      return User.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        await logout();
        return null;
      }
      throw _handleError(e);
    }
  }

  // Logout user
  Future<void> logout() async {
    await _prefs.remove('access_token');
    await _prefs.remove('refresh_token');
  }

  // Check if user is logged in
  Future<bool> isLoggedIn() async {
    final token = await getAccessToken();
    return token != null;
  }

  // Get access token
  Future<String?> getAccessToken() async {
    return _prefs.getString('access_token');
  }

  // Get refresh token
  Future<String?> getRefreshToken() async {
    return _prefs.getString('refresh_token');
  }

  // Handle API errors
  String _handleError(DioException e) {
    if (e.response?.data != null) {
      final data = e.response!.data;
      if (data is Map<String, dynamic> && data.containsKey('detail')) {
        return data['detail'].toString();
      }
    }
    
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timeout. Please check your internet connection.';
      case DioExceptionType.connectionError:
        return 'No internet connection. Please check your network.';
      default:
        return 'An unexpected error occurred. Please try again.';
    }
  }
}
