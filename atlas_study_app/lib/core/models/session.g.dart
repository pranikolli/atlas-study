// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudySessionImpl _$$StudySessionImplFromJson(Map<String, dynamic> json) =>
    _$StudySessionImpl(
      id: (json['id'] as num).toInt(),
      taskId: (json['taskId'] as num?)?.toInt(),
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      isActive: json['isActive'] as bool? ?? false,
      notes: json['notes'] as String?,
      breaksTaken: (json['breaksTaken'] as num?)?.toInt() ?? 0,
      focusScore: (json['focusScore'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$StudySessionImplToJson(_$StudySessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'taskId': instance.taskId,
      'durationMinutes': instance.durationMinutes,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'isActive': instance.isActive,
      'notes': instance.notes,
      'breaksTaken': instance.breaksTaken,
      'focusScore': instance.focusScore,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$SessionCreateImpl _$$SessionCreateImplFromJson(Map<String, dynamic> json) =>
    _$SessionCreateImpl(
      taskId: (json['taskId'] as num?)?.toInt(),
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      startTime: DateTime.parse(json['startTime'] as String),
      notes: json['notes'] as String?,
      breaksTaken: (json['breaksTaken'] as num?)?.toInt() ?? 0,
      focusScore: (json['focusScore'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SessionCreateImplToJson(_$SessionCreateImpl instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'durationMinutes': instance.durationMinutes,
      'startTime': instance.startTime.toIso8601String(),
      'notes': instance.notes,
      'breaksTaken': instance.breaksTaken,
      'focusScore': instance.focusScore,
    };

_$SessionUpdateImpl _$$SessionUpdateImplFromJson(Map<String, dynamic> json) =>
    _$SessionUpdateImpl(
      durationMinutes: (json['durationMinutes'] as num?)?.toInt(),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      isActive: json['isActive'] as bool?,
      notes: json['notes'] as String?,
      breaksTaken: (json['breaksTaken'] as num?)?.toInt(),
      focusScore: (json['focusScore'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SessionUpdateImplToJson(_$SessionUpdateImpl instance) =>
    <String, dynamic>{
      'durationMinutes': instance.durationMinutes,
      'endTime': instance.endTime?.toIso8601String(),
      'isActive': instance.isActive,
      'notes': instance.notes,
      'breaksTaken': instance.breaksTaken,
      'focusScore': instance.focusScore,
    };
