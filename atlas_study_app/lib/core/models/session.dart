import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class StudySession with _$StudySession {
  const factory StudySession({
    required int id,
    int? taskId,
    required int durationMinutes,
    required DateTime startTime,
    DateTime? endTime,
    @Default(false) bool isActive,
    String? notes,
    @Default(0) int breaksTaken,
    int? focusScore,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _StudySession;

  factory StudySession.fromJson(Map<String, dynamic> json) => _$StudySessionFromJson(json);
}

@freezed
class SessionCreate with _$SessionCreate {
  const factory SessionCreate({
    int? taskId,
    required int durationMinutes,
    required DateTime startTime,
    String? notes,
    @Default(0) int breaksTaken,
    int? focusScore,
  }) = _SessionCreate;

  factory SessionCreate.fromJson(Map<String, dynamic> json) => _$SessionCreateFromJson(json);
}

@freezed
class SessionUpdate with _$SessionUpdate {
  const factory SessionUpdate({
    int? durationMinutes,
    DateTime? endTime,
    bool? isActive,
    String? notes,
    int? breaksTaken,
    int? focusScore,
  }) = _SessionUpdate;

  factory SessionUpdate.fromJson(Map<String, dynamic> json) => _$SessionUpdateFromJson(json);
}
