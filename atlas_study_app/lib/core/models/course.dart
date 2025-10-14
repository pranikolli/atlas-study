import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required int id,
    required String name,
    String? code,
    String? term,
    @Default('#1F77B4') String color,
    String? instructor,
    String? description,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CourseCreate with _$CourseCreate {
  const factory CourseCreate({
    required String name,
    String? code,
    String? term,
    @Default('#1F77B4') String color,
    String? instructor,
    String? description,
  }) = _CourseCreate;

  factory CourseCreate.fromJson(Map<String, dynamic> json) => _$CourseCreateFromJson(json);
}

@freezed
class CourseUpdate with _$CourseUpdate {
  const factory CourseUpdate({
    String? name,
    String? code,
    String? term,
    String? color,
    String? instructor,
    String? description,
  }) = _CourseUpdate;

  factory CourseUpdate.fromJson(Map<String, dynamic> json) => _$CourseUpdateFromJson(json);
}
