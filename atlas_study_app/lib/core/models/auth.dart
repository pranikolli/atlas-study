import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);
}

@freezed
class SignupRequest with _$SignupRequest {
  const factory SignupRequest({
    required String email,
    required String password,
    String? fullName,
  }) = _SignupRequest;

  factory SignupRequest.fromJson(Map<String, dynamic> json) => _$SignupRequestFromJson(json);
}

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required String accessToken,
    required String refreshToken,
    required String tokenType,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    String? fullName,
    required bool isActive,
    required bool isVerified,
    @Default("22:00") String sleepWindowStart,
    @Default("08:00") String sleepWindowEnd,
    @Default("medium") String reminderIntensity,
    @Default(60) int defaultTaskDuration,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
