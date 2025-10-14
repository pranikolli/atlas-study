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
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'is_verified') required bool isVerified,
    @JsonKey(name: 'sleep_window_start') @Default("22:00") String sleepWindowStart,
    @JsonKey(name: 'sleep_window_end') @Default("08:00") String sleepWindowEnd,
    @JsonKey(name: 'reminder_intensity') @Default("medium") String reminderIntensity,
    @JsonKey(name: 'default_task_duration') @Default(60) int defaultTaskDuration,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
