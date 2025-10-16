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
    print('🟡 Attempting login:');
    print('  Email: $email');
    print('  URL: ${ApiConfig.baseUrl}${ApiConfig.authEndpoint}/login');
    
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.authEndpoint}/login',
        data: LoginRequest(email: email, password: password).toJson(),
      );

      print('✅ Login successful!');
      print('  Status: ${response.statusCode}');
      print('  Response: ${response.data}');

      final authResponse = AuthResponse.fromJson(response.data);
      
      // Store tokens
      await _prefs.setString('access_token', authResponse.accessToken);
      await _prefs.setString('refresh_token', authResponse.refreshToken);
      
      return authResponse;
    } on DioException catch (e) {
      print('❌ Login failed with DioException');
      throw _handleError(e);
    } catch (e) {
      print('❌ Login failed with unexpected error: $e');
      rethrow;
    }
  }

  // Signup user
  Future<User> signup(String email, String password, {String? fullName}) async {
    print('🟡 Attempting signup:');
    print('  Email: $email');
    print('  Full Name: $fullName');
    print('  URL: ${ApiConfig.baseUrl}${ApiConfig.authEndpoint}/signup');
    
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.authEndpoint}/signup',
        data: SignupRequest(email: email, password: password, fullName: fullName).toJson(),
      );

      print('✅ Signup successful!');
      print('  Status: ${response.statusCode}');
      print('  Response: ${response.data}');

      return User.fromJson(response.data);
    } on DioException catch (e) {
      print('❌ Signup failed with DioException');
      throw _handleError(e);
    } catch (e) {
      print('❌ Signup failed with unexpected error: $e');
      rethrow;
    }
  }

  // Get current user
  Future<User?> getCurrentUser() async {
    final token = await getAccessToken();
    if (token == null) {
      print('🔴 No access token found');
      return null;
    }

    print('🟡 Getting current user:');
    print('  URL: ${ApiConfig.baseUrl}${ApiConfig.userEndpoint}/me');
    print('  Token: ${token.substring(0, 20)}...');

    try {
      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.userEndpoint}/me',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      print('✅ Get current user successful!');
      print('  Status: ${response.statusCode}');
      print('  Response: ${response.data}');

      return User.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        print('🔴 Unauthorized - logging out');
        await logout();
        return null;
      }
      print('❌ Get current user failed with DioException');
      throw _handleError(e);
    } catch (e) {
      print('❌ Get current user failed with unexpected error: $e');
      rethrow;
    }
  }

  // Logout user
  Future<void> logout() async {
    await _prefs.remove('access_token');
    await _prefs.remove('refresh_token');
  }

  // Change email
  Future<User> changeEmail(String newEmail) async {
    final token = await getAccessToken();
    if (token == null) throw 'Not authenticated';

    try {
      final response = await _dio.put(
        '${ApiConfig.baseUrl}${ApiConfig.userEndpoint}/me/email',
        data: {'new_email': newEmail},
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      return User.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Change password
  Future<void> changePassword(String currentPassword, String newPassword) async {
    final token = await getAccessToken();
    if (token == null) throw 'Not authenticated';

    try {
      await _dio.put(
        '${ApiConfig.baseUrl}${ApiConfig.userEndpoint}/me/password',
        data: {
          'current_password': currentPassword,
          'new_password': newPassword,
        },
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
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
    print('🔴 Auth Error Debug Info:');
    print('  Error Type: ${e.type}');
    print('  Status Code: ${e.response?.statusCode}');
    print('  Response Data: ${e.response?.data}');
    print('  Request URL: ${e.requestOptions.uri}');
    print('  Request Data: ${e.requestOptions.data}');
    
    if (e.response?.data != null) {
      final data = e.response!.data;
      if (data is Map<String, dynamic> && data.containsKey('detail')) {
        final detail = data['detail'].toString();
        print('  Server Error Detail: $detail');
        
        // Provide user-friendly error messages
        if (detail.contains('Incorrect current password') || detail.contains('Incorrect email or password')) {
          return 'Incorrect current password. Please try again.';
        }
        if (detail.contains('Email already registered')) {
          return 'This email is already registered. Please use a different email.';
        }
        if (detail.contains('Could not validate credentials')) {
          return 'Session expired. Please log in again.';
        }
        
        return detail;
      }
    }
    
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        print('  Error: Connection timeout to backend server');
        return 'Connection timeout. Backend server may be down.';
      case DioExceptionType.connectionError:
        print('  Error: Cannot connect to backend server');
        return 'Cannot connect to backend server. Is it running on http://localhost:8000?';
      case DioExceptionType.badResponse:
        print('  Error: Bad response from server (${e.response?.statusCode})');
        if (e.response?.statusCode == 401) {
          return 'Incorrect current password. Please try again.';
        }
        if (e.response?.statusCode == 400) {
          return 'Invalid request. Please check your input.';
        }
        return 'Server error (${e.response?.statusCode}). Check backend logs.';
      default:
        print('  Error: Unexpected error type');
        return 'An unexpected error occurred. Check console for details.';
    }
  }
}
