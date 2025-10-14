// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$SignupRequestImpl _$$SignupRequestImplFromJson(Map<String, dynamic> json) =>
    _$SignupRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      fullName: json['fullName'] as String?,
    );

Map<String, dynamic> _$$SignupRequestImplToJson(_$SignupRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'fullName': instance.fullName,
    };

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      fullName: json['full_name'] as String?,
      isActive: json['is_active'] as bool,
      isVerified: json['is_verified'] as bool,
      sleepWindowStart: json['sleep_window_start'] as String? ?? "22:00",
      sleepWindowEnd: json['sleep_window_end'] as String? ?? "08:00",
      reminderIntensity: json['reminder_intensity'] as String? ?? "medium",
      defaultTaskDuration:
          (json['default_task_duration'] as num?)?.toInt() ?? 60,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'full_name': instance.fullName,
      'is_active': instance.isActive,
      'is_verified': instance.isVerified,
      'sleep_window_start': instance.sleepWindowStart,
      'sleep_window_end': instance.sleepWindowEnd,
      'reminder_intensity': instance.reminderIntensity,
      'default_task_duration': instance.defaultTaskDuration,
    };
