// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WordEntity _$WordEntityFromJson(Map<String, dynamic> json) {
  return _WordEntity.fromJson(json);
}

/// @nodoc
mixin _$WordEntity {
  int get id => throw _privateConstructorUsedError;
  DateTime get edition => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  UserEntity? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordEntityCopyWith<WordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordEntityCopyWith<$Res> {
  factory $WordEntityCopyWith(
          WordEntity value, $Res Function(WordEntity) then) =
      _$WordEntityCopyWithImpl<$Res, WordEntity>;
  @useResult
  $Res call(
      {int id,
      DateTime edition,
      String title,
      String translation,
      String? description,
      UserEntity? user});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class _$WordEntityCopyWithImpl<$Res, $Val extends WordEntity>
    implements $WordEntityCopyWith<$Res> {
  _$WordEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? edition = null,
    Object? title = null,
    Object? translation = null,
    Object? description = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      edition: null == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WordEntityCopyWith<$Res>
    implements $WordEntityCopyWith<$Res> {
  factory _$$_WordEntityCopyWith(
          _$_WordEntity value, $Res Function(_$_WordEntity) then) =
      __$$_WordEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime edition,
      String title,
      String translation,
      String? description,
      UserEntity? user});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_WordEntityCopyWithImpl<$Res>
    extends _$WordEntityCopyWithImpl<$Res, _$_WordEntity>
    implements _$$_WordEntityCopyWith<$Res> {
  __$$_WordEntityCopyWithImpl(
      _$_WordEntity _value, $Res Function(_$_WordEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? edition = null,
    Object? title = null,
    Object? translation = null,
    Object? description = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_WordEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      edition: null == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WordEntity implements _WordEntity {
  const _$_WordEntity(
      {required this.id,
      required this.edition,
      required this.title,
      required this.translation,
      this.description,
      this.user});

  factory _$_WordEntity.fromJson(Map<String, dynamic> json) =>
      _$$_WordEntityFromJson(json);

  @override
  final int id;
  @override
  final DateTime edition;
  @override
  final String title;
  @override
  final String translation;
  @override
  final String? description;
  @override
  final UserEntity? user;

  @override
  String toString() {
    return 'WordEntity(id: $id, edition: $edition, title: $title, translation: $translation, description: $description, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.edition, edition) || other.edition == edition) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, edition, title, translation, description, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordEntityCopyWith<_$_WordEntity> get copyWith =>
      __$$_WordEntityCopyWithImpl<_$_WordEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordEntityToJson(
      this,
    );
  }
}

abstract class _WordEntity implements WordEntity {
  const factory _WordEntity(
      {required final int id,
      required final DateTime edition,
      required final String title,
      required final String translation,
      final String? description,
      final UserEntity? user}) = _$_WordEntity;

  factory _WordEntity.fromJson(Map<String, dynamic> json) =
      _$_WordEntity.fromJson;

  @override
  int get id;
  @override
  DateTime get edition;
  @override
  String get title;
  @override
  String get translation;
  @override
  String? get description;
  @override
  UserEntity? get user;
  @override
  @JsonKey(ignore: true)
  _$$_WordEntityCopyWith<_$_WordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
