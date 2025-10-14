// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get term => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String? get instructor => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? code,
      String? term,
      String color,
      String? instructor,
      String? description,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = freezed,
    Object? term = freezed,
    Object? color = null,
    Object? instructor = freezed,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      instructor: freezed == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? code,
      String? term,
      String color,
      String? instructor,
      String? description,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = freezed,
    Object? term = freezed,
    Object? color = null,
    Object? instructor = freezed,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CourseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      instructor: freezed == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {required this.id,
      required this.name,
      this.code,
      this.term,
      this.color = '#1F77B4',
      this.instructor,
      this.description,
      required this.createdAt,
      this.updatedAt});

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? code;
  @override
  final String? term;
  @override
  @JsonKey()
  final String color;
  @override
  final String? instructor;
  @override
  final String? description;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Course(id: $id, name: $name, code: $code, term: $term, color: $color, instructor: $instructor, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.instructor, instructor) ||
                other.instructor == instructor) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, term, color,
      instructor, description, createdAt, updatedAt);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {required final int id,
      required final String name,
      final String? code,
      final String? term,
      final String color,
      final String? instructor,
      final String? description,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get code;
  @override
  String? get term;
  @override
  String get color;
  @override
  String? get instructor;
  @override
  String? get description;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseCreate _$CourseCreateFromJson(Map<String, dynamic> json) {
  return _CourseCreate.fromJson(json);
}

/// @nodoc
mixin _$CourseCreate {
  String get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get term => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String? get instructor => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CourseCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCreateCopyWith<CourseCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCreateCopyWith<$Res> {
  factory $CourseCreateCopyWith(
          CourseCreate value, $Res Function(CourseCreate) then) =
      _$CourseCreateCopyWithImpl<$Res, CourseCreate>;
  @useResult
  $Res call(
      {String name,
      String? code,
      String? term,
      String color,
      String? instructor,
      String? description});
}

/// @nodoc
class _$CourseCreateCopyWithImpl<$Res, $Val extends CourseCreate>
    implements $CourseCreateCopyWith<$Res> {
  _$CourseCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = freezed,
    Object? term = freezed,
    Object? color = null,
    Object? instructor = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      instructor: freezed == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseCreateImplCopyWith<$Res>
    implements $CourseCreateCopyWith<$Res> {
  factory _$$CourseCreateImplCopyWith(
          _$CourseCreateImpl value, $Res Function(_$CourseCreateImpl) then) =
      __$$CourseCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? code,
      String? term,
      String color,
      String? instructor,
      String? description});
}

/// @nodoc
class __$$CourseCreateImplCopyWithImpl<$Res>
    extends _$CourseCreateCopyWithImpl<$Res, _$CourseCreateImpl>
    implements _$$CourseCreateImplCopyWith<$Res> {
  __$$CourseCreateImplCopyWithImpl(
      _$CourseCreateImpl _value, $Res Function(_$CourseCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = freezed,
    Object? term = freezed,
    Object? color = null,
    Object? instructor = freezed,
    Object? description = freezed,
  }) {
    return _then(_$CourseCreateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      instructor: freezed == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseCreateImpl implements _CourseCreate {
  const _$CourseCreateImpl(
      {required this.name,
      this.code,
      this.term,
      this.color = '#1F77B4',
      this.instructor,
      this.description});

  factory _$CourseCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseCreateImplFromJson(json);

  @override
  final String name;
  @override
  final String? code;
  @override
  final String? term;
  @override
  @JsonKey()
  final String color;
  @override
  final String? instructor;
  @override
  final String? description;

  @override
  String toString() {
    return 'CourseCreate(name: $name, code: $code, term: $term, color: $color, instructor: $instructor, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseCreateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.instructor, instructor) ||
                other.instructor == instructor) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, code, term, color, instructor, description);

  /// Create a copy of CourseCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseCreateImplCopyWith<_$CourseCreateImpl> get copyWith =>
      __$$CourseCreateImplCopyWithImpl<_$CourseCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseCreateImplToJson(
      this,
    );
  }
}

abstract class _CourseCreate implements CourseCreate {
  const factory _CourseCreate(
      {required final String name,
      final String? code,
      final String? term,
      final String color,
      final String? instructor,
      final String? description}) = _$CourseCreateImpl;

  factory _CourseCreate.fromJson(Map<String, dynamic> json) =
      _$CourseCreateImpl.fromJson;

  @override
  String get name;
  @override
  String? get code;
  @override
  String? get term;
  @override
  String get color;
  @override
  String? get instructor;
  @override
  String? get description;

  /// Create a copy of CourseCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseCreateImplCopyWith<_$CourseCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseUpdate _$CourseUpdateFromJson(Map<String, dynamic> json) {
  return _CourseUpdate.fromJson(json);
}

/// @nodoc
mixin _$CourseUpdate {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get term => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get instructor => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CourseUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseUpdateCopyWith<CourseUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseUpdateCopyWith<$Res> {
  factory $CourseUpdateCopyWith(
          CourseUpdate value, $Res Function(CourseUpdate) then) =
      _$CourseUpdateCopyWithImpl<$Res, CourseUpdate>;
  @useResult
  $Res call(
      {String? name,
      String? code,
      String? term,
      String? color,
      String? instructor,
      String? description});
}

/// @nodoc
class _$CourseUpdateCopyWithImpl<$Res, $Val extends CourseUpdate>
    implements $CourseUpdateCopyWith<$Res> {
  _$CourseUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? term = freezed,
    Object? color = freezed,
    Object? instructor = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      instructor: freezed == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseUpdateImplCopyWith<$Res>
    implements $CourseUpdateCopyWith<$Res> {
  factory _$$CourseUpdateImplCopyWith(
          _$CourseUpdateImpl value, $Res Function(_$CourseUpdateImpl) then) =
      __$$CourseUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? code,
      String? term,
      String? color,
      String? instructor,
      String? description});
}

/// @nodoc
class __$$CourseUpdateImplCopyWithImpl<$Res>
    extends _$CourseUpdateCopyWithImpl<$Res, _$CourseUpdateImpl>
    implements _$$CourseUpdateImplCopyWith<$Res> {
  __$$CourseUpdateImplCopyWithImpl(
      _$CourseUpdateImpl _value, $Res Function(_$CourseUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? term = freezed,
    Object? color = freezed,
    Object? instructor = freezed,
    Object? description = freezed,
  }) {
    return _then(_$CourseUpdateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      instructor: freezed == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseUpdateImpl implements _CourseUpdate {
  const _$CourseUpdateImpl(
      {this.name,
      this.code,
      this.term,
      this.color,
      this.instructor,
      this.description});

  factory _$CourseUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseUpdateImplFromJson(json);

  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? term;
  @override
  final String? color;
  @override
  final String? instructor;
  @override
  final String? description;

  @override
  String toString() {
    return 'CourseUpdate(name: $name, code: $code, term: $term, color: $color, instructor: $instructor, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseUpdateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.instructor, instructor) ||
                other.instructor == instructor) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, code, term, color, instructor, description);

  /// Create a copy of CourseUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseUpdateImplCopyWith<_$CourseUpdateImpl> get copyWith =>
      __$$CourseUpdateImplCopyWithImpl<_$CourseUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseUpdateImplToJson(
      this,
    );
  }
}

abstract class _CourseUpdate implements CourseUpdate {
  const factory _CourseUpdate(
      {final String? name,
      final String? code,
      final String? term,
      final String? color,
      final String? instructor,
      final String? description}) = _$CourseUpdateImpl;

  factory _CourseUpdate.fromJson(Map<String, dynamic> json) =
      _$CourseUpdateImpl.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get term;
  @override
  String? get color;
  @override
  String? get instructor;
  @override
  String? get description;

  /// Create a copy of CourseUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseUpdateImplCopyWith<_$CourseUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
