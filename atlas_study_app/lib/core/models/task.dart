import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required int id,
    int? courseId,
    required String title,
    String? description,
    @Default('other') String taskType,
    @Default('todo') String status,
    DateTime? dueDate,
    int? estimatedDuration,
    int? actualDuration,
    @Default(1) int priority,
    String? tags,
    String? externalUrl,
    String? attachmentUrl,
    @Default(false) bool isCompleted,
    DateTime? completedAt,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
class TaskCreate with _$TaskCreate {
  const factory TaskCreate({
    required String title,
    String? description,
    @Default('other') String taskType,
    int? courseId,
    DateTime? dueDate,
    int? estimatedDuration,
    @Default(1) int priority,
    String? tags,
    String? externalUrl,
    String? attachmentUrl,
  }) = _TaskCreate;

  factory TaskCreate.fromJson(Map<String, dynamic> json) => _$TaskCreateFromJson(json);
}

@freezed
class TaskUpdate with _$TaskUpdate {
  const factory TaskUpdate({
    String? title,
    String? description,
    String? taskType,
    int? courseId,
    DateTime? dueDate,
    int? estimatedDuration,
    String? status,
    int? priority,
    String? tags,
    String? externalUrl,
    String? attachmentUrl,
    bool? isCompleted,
  }) = _TaskUpdate;

  factory TaskUpdate.fromJson(Map<String, dynamic> json) => _$TaskUpdateFromJson(json);
}
