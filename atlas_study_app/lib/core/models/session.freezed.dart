// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudySession _$StudySessionFromJson(Map<String, dynamic> json) {
  return _StudySession.fromJson(json);
}

/// @nodoc
mixin _$StudySession {
  int get id => throw _privateConstructorUsedError;
  int? get taskId => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int get breaksTaken => throw _privateConstructorUsedError;
  int? get focusScore => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this StudySession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudySession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudySessionCopyWith<StudySession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudySessionCopyWith<$Res> {
  factory $StudySessionCopyWith(
          StudySession value, $Res Function(StudySession) then) =
      _$StudySessionCopyWithImpl<$Res, StudySession>;
  @useResult
  $Res call(
      {int id,
      int? taskId,
      int durationMinutes,
      DateTime startTime,
      DateTime? endTime,
      bool isActive,
      String? notes,
      int breaksTaken,
      int? focusScore,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$StudySessionCopyWithImpl<$Res, $Val extends StudySession>
    implements $StudySessionCopyWith<$Res> {
  _$StudySessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudySession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = freezed,
    Object? durationMinutes = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? isActive = null,
    Object? notes = freezed,
    Object? breaksTaken = null,
    Object? focusScore = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      breaksTaken: null == breaksTaken
          ? _value.breaksTaken
          : breaksTaken // ignore: cast_nullable_to_non_nullable
              as int,
      focusScore: freezed == focusScore
          ? _value.focusScore
          : focusScore // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudySessionImplCopyWith<$Res>
    implements $StudySessionCopyWith<$Res> {
  factory _$$StudySessionImplCopyWith(
          _$StudySessionImpl value, $Res Function(_$StudySessionImpl) then) =
      __$$StudySessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? taskId,
      int durationMinutes,
      DateTime startTime,
      DateTime? endTime,
      bool isActive,
      String? notes,
      int breaksTaken,
      int? focusScore,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$StudySessionImplCopyWithImpl<$Res>
    extends _$StudySessionCopyWithImpl<$Res, _$StudySessionImpl>
    implements _$$StudySessionImplCopyWith<$Res> {
  __$$StudySessionImplCopyWithImpl(
      _$StudySessionImpl _value, $Res Function(_$StudySessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudySession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = freezed,
    Object? durationMinutes = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? isActive = null,
    Object? notes = freezed,
    Object? breaksTaken = null,
    Object? focusScore = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StudySessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      breaksTaken: null == breaksTaken
          ? _value.breaksTaken
          : breaksTaken // ignore: cast_nullable_to_non_nullable
              as int,
      focusScore: freezed == focusScore
          ? _value.focusScore
          : focusScore // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudySessionImpl implements _StudySession {
  const _$StudySessionImpl(
      {required this.id,
      this.taskId,
      required this.durationMinutes,
      required this.startTime,
      this.endTime,
      this.isActive = false,
      this.notes,
      this.breaksTaken = 0,
      this.focusScore,
      required this.createdAt,
      this.updatedAt});

  factory _$StudySessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudySessionImplFromJson(json);

  @override
  final int id;
  @override
  final int? taskId;
  @override
  final int durationMinutes;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final String? notes;
  @override
  @JsonKey()
  final int breaksTaken;
  @override
  final int? focusScore;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'StudySession(id: $id, taskId: $taskId, durationMinutes: $durationMinutes, startTime: $startTime, endTime: $endTime, isActive: $isActive, notes: $notes, breaksTaken: $breaksTaken, focusScore: $focusScore, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudySessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.breaksTaken, breaksTaken) ||
                other.breaksTaken == breaksTaken) &&
            (identical(other.focusScore, focusScore) ||
                other.focusScore == focusScore) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      taskId,
      durationMinutes,
      startTime,
      endTime,
      isActive,
      notes,
      breaksTaken,
      focusScore,
      createdAt,
      updatedAt);

  /// Create a copy of StudySession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudySessionImplCopyWith<_$StudySessionImpl> get copyWith =>
      __$$StudySessionImplCopyWithImpl<_$StudySessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudySessionImplToJson(
      this,
    );
  }
}

abstract class _StudySession implements StudySession {
  const factory _StudySession(
      {required final int id,
      final int? taskId,
      required final int durationMinutes,
      required final DateTime startTime,
      final DateTime? endTime,
      final bool isActive,
      final String? notes,
      final int breaksTaken,
      final int? focusScore,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$StudySessionImpl;

  factory _StudySession.fromJson(Map<String, dynamic> json) =
      _$StudySessionImpl.fromJson;

  @override
  int get id;
  @override
  int? get taskId;
  @override
  int get durationMinutes;
  @override
  DateTime get startTime;
  @override
  DateTime? get endTime;
  @override
  bool get isActive;
  @override
  String? get notes;
  @override
  int get breaksTaken;
  @override
  int? get focusScore;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of StudySession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudySessionImplCopyWith<_$StudySessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionCreate _$SessionCreateFromJson(Map<String, dynamic> json) {
  return _SessionCreate.fromJson(json);
}

/// @nodoc
mixin _$SessionCreate {
  int? get taskId => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int get breaksTaken => throw _privateConstructorUsedError;
  int? get focusScore => throw _privateConstructorUsedError;

  /// Serializes this SessionCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionCreateCopyWith<SessionCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCreateCopyWith<$Res> {
  factory $SessionCreateCopyWith(
          SessionCreate value, $Res Function(SessionCreate) then) =
      _$SessionCreateCopyWithImpl<$Res, SessionCreate>;
  @useResult
  $Res call(
      {int? taskId,
      int durationMinutes,
      DateTime startTime,
      String? notes,
      int breaksTaken,
      int? focusScore});
}

/// @nodoc
class _$SessionCreateCopyWithImpl<$Res, $Val extends SessionCreate>
    implements $SessionCreateCopyWith<$Res> {
  _$SessionCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = freezed,
    Object? durationMinutes = null,
    Object? startTime = null,
    Object? notes = freezed,
    Object? breaksTaken = null,
    Object? focusScore = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      breaksTaken: null == breaksTaken
          ? _value.breaksTaken
          : breaksTaken // ignore: cast_nullable_to_non_nullable
              as int,
      focusScore: freezed == focusScore
          ? _value.focusScore
          : focusScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionCreateImplCopyWith<$Res>
    implements $SessionCreateCopyWith<$Res> {
  factory _$$SessionCreateImplCopyWith(
          _$SessionCreateImpl value, $Res Function(_$SessionCreateImpl) then) =
      __$$SessionCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? taskId,
      int durationMinutes,
      DateTime startTime,
      String? notes,
      int breaksTaken,
      int? focusScore});
}

/// @nodoc
class __$$SessionCreateImplCopyWithImpl<$Res>
    extends _$SessionCreateCopyWithImpl<$Res, _$SessionCreateImpl>
    implements _$$SessionCreateImplCopyWith<$Res> {
  __$$SessionCreateImplCopyWithImpl(
      _$SessionCreateImpl _value, $Res Function(_$SessionCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = freezed,
    Object? durationMinutes = null,
    Object? startTime = null,
    Object? notes = freezed,
    Object? breaksTaken = null,
    Object? focusScore = freezed,
  }) {
    return _then(_$SessionCreateImpl(
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      breaksTaken: null == breaksTaken
          ? _value.breaksTaken
          : breaksTaken // ignore: cast_nullable_to_non_nullable
              as int,
      focusScore: freezed == focusScore
          ? _value.focusScore
          : focusScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionCreateImpl implements _SessionCreate {
  const _$SessionCreateImpl(
      {this.taskId,
      required this.durationMinutes,
      required this.startTime,
      this.notes,
      this.breaksTaken = 0,
      this.focusScore});

  factory _$SessionCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionCreateImplFromJson(json);

  @override
  final int? taskId;
  @override
  final int durationMinutes;
  @override
  final DateTime startTime;
  @override
  final String? notes;
  @override
  @JsonKey()
  final int breaksTaken;
  @override
  final int? focusScore;

  @override
  String toString() {
    return 'SessionCreate(taskId: $taskId, durationMinutes: $durationMinutes, startTime: $startTime, notes: $notes, breaksTaken: $breaksTaken, focusScore: $focusScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionCreateImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.breaksTaken, breaksTaken) ||
                other.breaksTaken == breaksTaken) &&
            (identical(other.focusScore, focusScore) ||
                other.focusScore == focusScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, taskId, durationMinutes,
      startTime, notes, breaksTaken, focusScore);

  /// Create a copy of SessionCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionCreateImplCopyWith<_$SessionCreateImpl> get copyWith =>
      __$$SessionCreateImplCopyWithImpl<_$SessionCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionCreateImplToJson(
      this,
    );
  }
}

abstract class _SessionCreate implements SessionCreate {
  const factory _SessionCreate(
      {final int? taskId,
      required final int durationMinutes,
      required final DateTime startTime,
      final String? notes,
      final int breaksTaken,
      final int? focusScore}) = _$SessionCreateImpl;

  factory _SessionCreate.fromJson(Map<String, dynamic> json) =
      _$SessionCreateImpl.fromJson;

  @override
  int? get taskId;
  @override
  int get durationMinutes;
  @override
  DateTime get startTime;
  @override
  String? get notes;
  @override
  int get breaksTaken;
  @override
  int? get focusScore;

  /// Create a copy of SessionCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionCreateImplCopyWith<_$SessionCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionUpdate _$SessionUpdateFromJson(Map<String, dynamic> json) {
  return _SessionUpdate.fromJson(json);
}

/// @nodoc
mixin _$SessionUpdate {
  int? get durationMinutes => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get breaksTaken => throw _privateConstructorUsedError;
  int? get focusScore => throw _privateConstructorUsedError;

  /// Serializes this SessionUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionUpdateCopyWith<SessionUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionUpdateCopyWith<$Res> {
  factory $SessionUpdateCopyWith(
          SessionUpdate value, $Res Function(SessionUpdate) then) =
      _$SessionUpdateCopyWithImpl<$Res, SessionUpdate>;
  @useResult
  $Res call(
      {int? durationMinutes,
      DateTime? endTime,
      bool? isActive,
      String? notes,
      int? breaksTaken,
      int? focusScore});
}

/// @nodoc
class _$SessionUpdateCopyWithImpl<$Res, $Val extends SessionUpdate>
    implements $SessionUpdateCopyWith<$Res> {
  _$SessionUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? durationMinutes = freezed,
    Object? endTime = freezed,
    Object? isActive = freezed,
    Object? notes = freezed,
    Object? breaksTaken = freezed,
    Object? focusScore = freezed,
  }) {
    return _then(_value.copyWith(
      durationMinutes: freezed == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      breaksTaken: freezed == breaksTaken
          ? _value.breaksTaken
          : breaksTaken // ignore: cast_nullable_to_non_nullable
              as int?,
      focusScore: freezed == focusScore
          ? _value.focusScore
          : focusScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionUpdateImplCopyWith<$Res>
    implements $SessionUpdateCopyWith<$Res> {
  factory _$$SessionUpdateImplCopyWith(
          _$SessionUpdateImpl value, $Res Function(_$SessionUpdateImpl) then) =
      __$$SessionUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? durationMinutes,
      DateTime? endTime,
      bool? isActive,
      String? notes,
      int? breaksTaken,
      int? focusScore});
}

/// @nodoc
class __$$SessionUpdateImplCopyWithImpl<$Res>
    extends _$SessionUpdateCopyWithImpl<$Res, _$SessionUpdateImpl>
    implements _$$SessionUpdateImplCopyWith<$Res> {
  __$$SessionUpdateImplCopyWithImpl(
      _$SessionUpdateImpl _value, $Res Function(_$SessionUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? durationMinutes = freezed,
    Object? endTime = freezed,
    Object? isActive = freezed,
    Object? notes = freezed,
    Object? breaksTaken = freezed,
    Object? focusScore = freezed,
  }) {
    return _then(_$SessionUpdateImpl(
      durationMinutes: freezed == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      breaksTaken: freezed == breaksTaken
          ? _value.breaksTaken
          : breaksTaken // ignore: cast_nullable_to_non_nullable
              as int?,
      focusScore: freezed == focusScore
          ? _value.focusScore
          : focusScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionUpdateImpl implements _SessionUpdate {
  const _$SessionUpdateImpl(
      {this.durationMinutes,
      this.endTime,
      this.isActive,
      this.notes,
      this.breaksTaken,
      this.focusScore});

  factory _$SessionUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionUpdateImplFromJson(json);

  @override
  final int? durationMinutes;
  @override
  final DateTime? endTime;
  @override
  final bool? isActive;
  @override
  final String? notes;
  @override
  final int? breaksTaken;
  @override
  final int? focusScore;

  @override
  String toString() {
    return 'SessionUpdate(durationMinutes: $durationMinutes, endTime: $endTime, isActive: $isActive, notes: $notes, breaksTaken: $breaksTaken, focusScore: $focusScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionUpdateImpl &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.breaksTaken, breaksTaken) ||
                other.breaksTaken == breaksTaken) &&
            (identical(other.focusScore, focusScore) ||
                other.focusScore == focusScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, durationMinutes, endTime,
      isActive, notes, breaksTaken, focusScore);

  /// Create a copy of SessionUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionUpdateImplCopyWith<_$SessionUpdateImpl> get copyWith =>
      __$$SessionUpdateImplCopyWithImpl<_$SessionUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionUpdateImplToJson(
      this,
    );
  }
}

abstract class _SessionUpdate implements SessionUpdate {
  const factory _SessionUpdate(
      {final int? durationMinutes,
      final DateTime? endTime,
      final bool? isActive,
      final String? notes,
      final int? breaksTaken,
      final int? focusScore}) = _$SessionUpdateImpl;

  factory _SessionUpdate.fromJson(Map<String, dynamic> json) =
      _$SessionUpdateImpl.fromJson;

  @override
  int? get durationMinutes;
  @override
  DateTime? get endTime;
  @override
  bool? get isActive;
  @override
  String? get notes;
  @override
  int? get breaksTaken;
  @override
  int? get focusScore;

  /// Create a copy of SessionUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionUpdateImplCopyWith<_$SessionUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
