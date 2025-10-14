// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  int get id => throw _privateConstructorUsedError;
  int? get courseId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get taskType => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  int? get estimatedDuration => throw _privateConstructorUsedError;
  int? get actualDuration => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get externalUrl => throw _privateConstructorUsedError;
  String? get attachmentUrl => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Task to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {int id,
      int? courseId,
      String title,
      String? description,
      String taskType,
      String status,
      DateTime? dueDate,
      int? estimatedDuration,
      int? actualDuration,
      int priority,
      String? tags,
      String? externalUrl,
      String? attachmentUrl,
      bool isCompleted,
      DateTime? completedAt,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? taskType = null,
    Object? status = null,
    Object? dueDate = freezed,
    Object? estimatedDuration = freezed,
    Object? actualDuration = freezed,
    Object? priority = null,
    Object? tags = freezed,
    Object? externalUrl = freezed,
    Object? attachmentUrl = freezed,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskType: null == taskType
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      actualDuration: freezed == actualDuration
          ? _value.actualDuration
          : actualDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? courseId,
      String title,
      String? description,
      String taskType,
      String status,
      DateTime? dueDate,
      int? estimatedDuration,
      int? actualDuration,
      int priority,
      String? tags,
      String? externalUrl,
      String? attachmentUrl,
      bool isCompleted,
      DateTime? completedAt,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? taskType = null,
    Object? status = null,
    Object? dueDate = freezed,
    Object? estimatedDuration = freezed,
    Object? actualDuration = freezed,
    Object? priority = null,
    Object? tags = freezed,
    Object? externalUrl = freezed,
    Object? attachmentUrl = freezed,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskType: null == taskType
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      actualDuration: freezed == actualDuration
          ? _value.actualDuration
          : actualDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.id,
      this.courseId,
      required this.title,
      this.description,
      this.taskType = 'other',
      this.status = 'todo',
      this.dueDate,
      this.estimatedDuration,
      this.actualDuration,
      this.priority = 1,
      this.tags,
      this.externalUrl,
      this.attachmentUrl,
      this.isCompleted = false,
      this.completedAt,
      required this.createdAt,
      this.updatedAt});

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final int id;
  @override
  final int? courseId;
  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final String taskType;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime? dueDate;
  @override
  final int? estimatedDuration;
  @override
  final int? actualDuration;
  @override
  @JsonKey()
  final int priority;
  @override
  final String? tags;
  @override
  final String? externalUrl;
  @override
  final String? attachmentUrl;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final DateTime? completedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Task(id: $id, courseId: $courseId, title: $title, description: $description, taskType: $taskType, status: $status, dueDate: $dueDate, estimatedDuration: $estimatedDuration, actualDuration: $actualDuration, priority: $priority, tags: $tags, externalUrl: $externalUrl, attachmentUrl: $attachmentUrl, isCompleted: $isCompleted, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.taskType, taskType) ||
                other.taskType == taskType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.estimatedDuration, estimatedDuration) ||
                other.estimatedDuration == estimatedDuration) &&
            (identical(other.actualDuration, actualDuration) ||
                other.actualDuration == actualDuration) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.attachmentUrl, attachmentUrl) ||
                other.attachmentUrl == attachmentUrl) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
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
      courseId,
      title,
      description,
      taskType,
      status,
      dueDate,
      estimatedDuration,
      actualDuration,
      priority,
      tags,
      externalUrl,
      attachmentUrl,
      isCompleted,
      completedAt,
      createdAt,
      updatedAt);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final int id,
      final int? courseId,
      required final String title,
      final String? description,
      final String taskType,
      final String status,
      final DateTime? dueDate,
      final int? estimatedDuration,
      final int? actualDuration,
      final int priority,
      final String? tags,
      final String? externalUrl,
      final String? attachmentUrl,
      final bool isCompleted,
      final DateTime? completedAt,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  int get id;
  @override
  int? get courseId;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get taskType;
  @override
  String get status;
  @override
  DateTime? get dueDate;
  @override
  int? get estimatedDuration;
  @override
  int? get actualDuration;
  @override
  int get priority;
  @override
  String? get tags;
  @override
  String? get externalUrl;
  @override
  String? get attachmentUrl;
  @override
  bool get isCompleted;
  @override
  DateTime? get completedAt;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskCreate _$TaskCreateFromJson(Map<String, dynamic> json) {
  return _TaskCreate.fromJson(json);
}

/// @nodoc
mixin _$TaskCreate {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get taskType => throw _privateConstructorUsedError;
  int? get courseId => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  int? get estimatedDuration => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get externalUrl => throw _privateConstructorUsedError;
  String? get attachmentUrl => throw _privateConstructorUsedError;

  /// Serializes this TaskCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskCreateCopyWith<TaskCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateCopyWith<$Res> {
  factory $TaskCreateCopyWith(
          TaskCreate value, $Res Function(TaskCreate) then) =
      _$TaskCreateCopyWithImpl<$Res, TaskCreate>;
  @useResult
  $Res call(
      {String title,
      String? description,
      String taskType,
      int? courseId,
      DateTime? dueDate,
      int? estimatedDuration,
      int priority,
      String? tags,
      String? externalUrl,
      String? attachmentUrl});
}

/// @nodoc
class _$TaskCreateCopyWithImpl<$Res, $Val extends TaskCreate>
    implements $TaskCreateCopyWith<$Res> {
  _$TaskCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? taskType = null,
    Object? courseId = freezed,
    Object? dueDate = freezed,
    Object? estimatedDuration = freezed,
    Object? priority = null,
    Object? tags = freezed,
    Object? externalUrl = freezed,
    Object? attachmentUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskType: null == taskType
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskCreateImplCopyWith<$Res>
    implements $TaskCreateCopyWith<$Res> {
  factory _$$TaskCreateImplCopyWith(
          _$TaskCreateImpl value, $Res Function(_$TaskCreateImpl) then) =
      __$$TaskCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      String taskType,
      int? courseId,
      DateTime? dueDate,
      int? estimatedDuration,
      int priority,
      String? tags,
      String? externalUrl,
      String? attachmentUrl});
}

/// @nodoc
class __$$TaskCreateImplCopyWithImpl<$Res>
    extends _$TaskCreateCopyWithImpl<$Res, _$TaskCreateImpl>
    implements _$$TaskCreateImplCopyWith<$Res> {
  __$$TaskCreateImplCopyWithImpl(
      _$TaskCreateImpl _value, $Res Function(_$TaskCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? taskType = null,
    Object? courseId = freezed,
    Object? dueDate = freezed,
    Object? estimatedDuration = freezed,
    Object? priority = null,
    Object? tags = freezed,
    Object? externalUrl = freezed,
    Object? attachmentUrl = freezed,
  }) {
    return _then(_$TaskCreateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskType: null == taskType
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskCreateImpl implements _TaskCreate {
  const _$TaskCreateImpl(
      {required this.title,
      this.description,
      this.taskType = 'other',
      this.courseId,
      this.dueDate,
      this.estimatedDuration,
      this.priority = 1,
      this.tags,
      this.externalUrl,
      this.attachmentUrl});

  factory _$TaskCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskCreateImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final String taskType;
  @override
  final int? courseId;
  @override
  final DateTime? dueDate;
  @override
  final int? estimatedDuration;
  @override
  @JsonKey()
  final int priority;
  @override
  final String? tags;
  @override
  final String? externalUrl;
  @override
  final String? attachmentUrl;

  @override
  String toString() {
    return 'TaskCreate(title: $title, description: $description, taskType: $taskType, courseId: $courseId, dueDate: $dueDate, estimatedDuration: $estimatedDuration, priority: $priority, tags: $tags, externalUrl: $externalUrl, attachmentUrl: $attachmentUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.taskType, taskType) ||
                other.taskType == taskType) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.estimatedDuration, estimatedDuration) ||
                other.estimatedDuration == estimatedDuration) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.attachmentUrl, attachmentUrl) ||
                other.attachmentUrl == attachmentUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      taskType,
      courseId,
      dueDate,
      estimatedDuration,
      priority,
      tags,
      externalUrl,
      attachmentUrl);

  /// Create a copy of TaskCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskCreateImplCopyWith<_$TaskCreateImpl> get copyWith =>
      __$$TaskCreateImplCopyWithImpl<_$TaskCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskCreateImplToJson(
      this,
    );
  }
}

abstract class _TaskCreate implements TaskCreate {
  const factory _TaskCreate(
      {required final String title,
      final String? description,
      final String taskType,
      final int? courseId,
      final DateTime? dueDate,
      final int? estimatedDuration,
      final int priority,
      final String? tags,
      final String? externalUrl,
      final String? attachmentUrl}) = _$TaskCreateImpl;

  factory _TaskCreate.fromJson(Map<String, dynamic> json) =
      _$TaskCreateImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  String get taskType;
  @override
  int? get courseId;
  @override
  DateTime? get dueDate;
  @override
  int? get estimatedDuration;
  @override
  int get priority;
  @override
  String? get tags;
  @override
  String? get externalUrl;
  @override
  String? get attachmentUrl;

  /// Create a copy of TaskCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskCreateImplCopyWith<_$TaskCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskUpdate _$TaskUpdateFromJson(Map<String, dynamic> json) {
  return _TaskUpdate.fromJson(json);
}

/// @nodoc
mixin _$TaskUpdate {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get taskType => throw _privateConstructorUsedError;
  int? get courseId => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  int? get estimatedDuration => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get externalUrl => throw _privateConstructorUsedError;
  String? get attachmentUrl => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this TaskUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskUpdateCopyWith<TaskUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskUpdateCopyWith<$Res> {
  factory $TaskUpdateCopyWith(
          TaskUpdate value, $Res Function(TaskUpdate) then) =
      _$TaskUpdateCopyWithImpl<$Res, TaskUpdate>;
  @useResult
  $Res call(
      {String? title,
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
      bool? isCompleted});
}

/// @nodoc
class _$TaskUpdateCopyWithImpl<$Res, $Val extends TaskUpdate>
    implements $TaskUpdateCopyWith<$Res> {
  _$TaskUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? taskType = freezed,
    Object? courseId = freezed,
    Object? dueDate = freezed,
    Object? estimatedDuration = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? tags = freezed,
    Object? externalUrl = freezed,
    Object? attachmentUrl = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskType: freezed == taskType
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskUpdateImplCopyWith<$Res>
    implements $TaskUpdateCopyWith<$Res> {
  factory _$$TaskUpdateImplCopyWith(
          _$TaskUpdateImpl value, $Res Function(_$TaskUpdateImpl) then) =
      __$$TaskUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
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
      bool? isCompleted});
}

/// @nodoc
class __$$TaskUpdateImplCopyWithImpl<$Res>
    extends _$TaskUpdateCopyWithImpl<$Res, _$TaskUpdateImpl>
    implements _$$TaskUpdateImplCopyWith<$Res> {
  __$$TaskUpdateImplCopyWithImpl(
      _$TaskUpdateImpl _value, $Res Function(_$TaskUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? taskType = freezed,
    Object? courseId = freezed,
    Object? dueDate = freezed,
    Object? estimatedDuration = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? tags = freezed,
    Object? externalUrl = freezed,
    Object? attachmentUrl = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_$TaskUpdateImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskType: freezed == taskType
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskUpdateImpl implements _TaskUpdate {
  const _$TaskUpdateImpl(
      {this.title,
      this.description,
      this.taskType,
      this.courseId,
      this.dueDate,
      this.estimatedDuration,
      this.status,
      this.priority,
      this.tags,
      this.externalUrl,
      this.attachmentUrl,
      this.isCompleted});

  factory _$TaskUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskUpdateImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? taskType;
  @override
  final int? courseId;
  @override
  final DateTime? dueDate;
  @override
  final int? estimatedDuration;
  @override
  final String? status;
  @override
  final int? priority;
  @override
  final String? tags;
  @override
  final String? externalUrl;
  @override
  final String? attachmentUrl;
  @override
  final bool? isCompleted;

  @override
  String toString() {
    return 'TaskUpdate(title: $title, description: $description, taskType: $taskType, courseId: $courseId, dueDate: $dueDate, estimatedDuration: $estimatedDuration, status: $status, priority: $priority, tags: $tags, externalUrl: $externalUrl, attachmentUrl: $attachmentUrl, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskUpdateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.taskType, taskType) ||
                other.taskType == taskType) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.estimatedDuration, estimatedDuration) ||
                other.estimatedDuration == estimatedDuration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.attachmentUrl, attachmentUrl) ||
                other.attachmentUrl == attachmentUrl) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      taskType,
      courseId,
      dueDate,
      estimatedDuration,
      status,
      priority,
      tags,
      externalUrl,
      attachmentUrl,
      isCompleted);

  /// Create a copy of TaskUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskUpdateImplCopyWith<_$TaskUpdateImpl> get copyWith =>
      __$$TaskUpdateImplCopyWithImpl<_$TaskUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskUpdateImplToJson(
      this,
    );
  }
}

abstract class _TaskUpdate implements TaskUpdate {
  const factory _TaskUpdate(
      {final String? title,
      final String? description,
      final String? taskType,
      final int? courseId,
      final DateTime? dueDate,
      final int? estimatedDuration,
      final String? status,
      final int? priority,
      final String? tags,
      final String? externalUrl,
      final String? attachmentUrl,
      final bool? isCompleted}) = _$TaskUpdateImpl;

  factory _TaskUpdate.fromJson(Map<String, dynamic> json) =
      _$TaskUpdateImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get taskType;
  @override
  int? get courseId;
  @override
  DateTime? get dueDate;
  @override
  int? get estimatedDuration;
  @override
  String? get status;
  @override
  int? get priority;
  @override
  String? get tags;
  @override
  String? get externalUrl;
  @override
  String? get attachmentUrl;
  @override
  bool? get isCompleted;

  /// Create a copy of TaskUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskUpdateImplCopyWith<_$TaskUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
