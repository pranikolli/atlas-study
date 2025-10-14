// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String?,
      term: json['term'] as String?,
      color: json['color'] as String? ?? '#1F77B4',
      instructor: json['instructor'] as String?,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'term': instance.term,
      'color': instance.color,
      'instructor': instance.instructor,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$CourseCreateImpl _$$CourseCreateImplFromJson(Map<String, dynamic> json) =>
    _$CourseCreateImpl(
      name: json['name'] as String,
      code: json['code'] as String?,
      term: json['term'] as String?,
      color: json['color'] as String? ?? '#1F77B4',
      instructor: json['instructor'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CourseCreateImplToJson(_$CourseCreateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'term': instance.term,
      'color': instance.color,
      'instructor': instance.instructor,
      'description': instance.description,
    };

_$CourseUpdateImpl _$$CourseUpdateImplFromJson(Map<String, dynamic> json) =>
    _$CourseUpdateImpl(
      name: json['name'] as String?,
      code: json['code'] as String?,
      term: json['term'] as String?,
      color: json['color'] as String?,
      instructor: json['instructor'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CourseUpdateImplToJson(_$CourseUpdateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'term': instance.term,
      'color': instance.color,
      'instructor': instance.instructor,
      'description': instance.description,
    };
