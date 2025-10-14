import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/api_config.dart';
import '../models/auth.dart';
import '../services/auth_service.dart';

// Dio provider
final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: ApiConfig.baseUrl,
    connectTimeout: ApiConfig.connectTimeout,
    receiveTimeout: ApiConfig.receiveTimeout,
    sendTimeout: ApiConfig.sendTimeout,
    headers: ApiConfig.defaultHeaders,
  ));

  // Add request interceptor to include auth token
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('access_token');
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
      handler.next(options);
    },
  ));

  return dio;
});

// SharedPreferences provider
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('SharedPreferences must be overridden');
});

// Auth service provider
final authServiceProvider = Provider<AuthService>((ref) {
  final dio = ref.watch(dioProvider);
  final prefs = ref.watch(sharedPreferencesProvider);
  return AuthService(dio, prefs);
});

// Auth state provider
final authStateProvider = StateNotifierProvider<AuthNotifier, AsyncValue<User?>>((ref) {
  final authService = ref.watch(authServiceProvider);
  return AuthNotifier(authService);
});

// Current user provider
final currentUserProvider = FutureProvider<User?>((ref) async {
  final authService = ref.watch(authServiceProvider);
  return await authService.getCurrentUser();
});

// Is logged in provider
final isLoggedInProvider = FutureProvider<bool>((ref) async {
  final authService = ref.watch(authServiceProvider);
  return await authService.isLoggedIn();
});

class AuthNotifier extends StateNotifier<AsyncValue<User?>> {
  final AuthService _authService;

  AuthNotifier(this._authService) : super(const AsyncValue.loading()) {
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    try {
      final isLoggedIn = await _authService.isLoggedIn();
      if (isLoggedIn) {
        final user = await _authService.getCurrentUser();
        state = AsyncValue.data(user);
      } else {
        state = const AsyncValue.data(null);
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      await _authService.login(email, password);
      final user = await _authService.getCurrentUser();
      state = AsyncValue.data(user);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> signup(String email, String password, {String? fullName}) async {
    state = const AsyncValue.loading();
    try {
      await _authService.signup(email, password, fullName: fullName);
      final user = await _authService.getCurrentUser();
      state = AsyncValue.data(user);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> logout() async {
    await _authService.logout();
    state = const AsyncValue.data(null);
  }
}
