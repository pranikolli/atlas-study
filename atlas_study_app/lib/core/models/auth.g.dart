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
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      tokenType: json['tokenType'] as String,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      fullName: json['fullName'] as String?,
      isActive: json['isActive'] as bool,
      isVerified: json['isVerified'] as bool,
      sleepWindowStart: json['sleepWindowStart'] as String? ?? "22:00",
      sleepWindowEnd: json['sleepWindowEnd'] as String? ?? "08:00",
      reminderIntensity: json['reminderIntensity'] as String? ?? "medium",
      defaultTaskDuration: (json['defaultTaskDuration'] as num?)?.toInt() ?? 60,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullName': instance.fullName,
      'isActive': instance.isActive,
      'isVerified': instance.isVerified,
      'sleepWindowStart': instance.sleepWindowStart,
      'sleepWindowEnd': instance.sleepWindowEnd,
      'reminderIntensity': instance.reminderIntensity,
      'defaultTaskDuration': instance.defaultTaskDuration,
    };
