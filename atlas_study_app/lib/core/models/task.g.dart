// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: (json['id'] as num).toInt(),
      courseId: (json['courseId'] as num?)?.toInt(),
      title: json['title'] as String,
      description: json['description'] as String?,
      taskType: json['taskType'] as String? ?? 'other',
      status: json['status'] as String? ?? 'todo',
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      estimatedDuration: (json['estimatedDuration'] as num?)?.toInt(),
      actualDuration: (json['actualDuration'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt() ?? 1,
      tags: json['tags'] as String?,
      externalUrl: json['externalUrl'] as String?,
      attachmentUrl: json['attachmentUrl'] as String?,
      isCompleted: json['isCompleted'] as bool? ?? false,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'title': instance.title,
      'description': instance.description,
      'taskType': instance.taskType,
      'status': instance.status,
      'dueDate': instance.dueDate?.toIso8601String(),
      'estimatedDuration': instance.estimatedDuration,
      'actualDuration': instance.actualDuration,
      'priority': instance.priority,
      'tags': instance.tags,
      'externalUrl': instance.externalUrl,
      'attachmentUrl': instance.attachmentUrl,
      'isCompleted': instance.isCompleted,
      'completedAt': instance.completedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$TaskCreateImpl _$$TaskCreateImplFromJson(Map<String, dynamic> json) =>
    _$TaskCreateImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      taskType: json['taskType'] as String? ?? 'other',
      courseId: (json['courseId'] as num?)?.toInt(),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      estimatedDuration: (json['estimatedDuration'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt() ?? 1,
      tags: json['tags'] as String?,
      externalUrl: json['externalUrl'] as String?,
      attachmentUrl: json['attachmentUrl'] as String?,
    );

Map<String, dynamic> _$$TaskCreateImplToJson(_$TaskCreateImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'taskType': instance.taskType,
      'courseId': instance.courseId,
      'dueDate': instance.dueDate?.toIso8601String(),
      'estimatedDuration': instance.estimatedDuration,
      'priority': instance.priority,
      'tags': instance.tags,
      'externalUrl': instance.externalUrl,
      'attachmentUrl': instance.attachmentUrl,
    };

_$TaskUpdateImpl _$$TaskUpdateImplFromJson(Map<String, dynamic> json) =>
    _$TaskUpdateImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      taskType: json['taskType'] as String?,
      courseId: (json['courseId'] as num?)?.toInt(),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      estimatedDuration: (json['estimatedDuration'] as num?)?.toInt(),
      status: json['status'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      tags: json['tags'] as String?,
      externalUrl: json['externalUrl'] as String?,
      attachmentUrl: json['attachmentUrl'] as String?,
      isCompleted: json['isCompleted'] as bool?,
    );

Map<String, dynamic> _$$TaskUpdateImplToJson(_$TaskUpdateImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'taskType': instance.taskType,
      'courseId': instance.courseId,
      'dueDate': instance.dueDate?.toIso8601String(),
      'estimatedDuration': instance.estimatedDuration,
      'status': instance.status,
      'priority': instance.priority,
      'tags': instance.tags,
      'externalUrl': instance.externalUrl,
      'attachmentUrl': instance.attachmentUrl,
      'isCompleted': instance.isCompleted,
    };
