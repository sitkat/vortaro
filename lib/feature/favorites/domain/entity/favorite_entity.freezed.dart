// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteEntity _$FavoriteEntityFromJson(Map<String, dynamic> json) {
  return _FavoriteEntity.fromJson(json);
}

/// @nodoc
mixin _$FavoriteEntity {
  int get id => throw _privateConstructorUsedError;
  int? get idWord => throw _privateConstructorUsedError;
  UserEntity get user => throw _privateConstructorUsedError;
  WordEntity get word => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteEntityCopyWith<FavoriteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEntityCopyWith<$Res> {
  factory $FavoriteEntityCopyWith(
          FavoriteEntity value, $Res Function(FavoriteEntity) then) =
      _$FavoriteEntityCopyWithImpl<$Res, FavoriteEntity>;
  @useResult
  $Res call({int id, int? idWord, UserEntity user, WordEntity word});

  $UserEntityCopyWith<$Res> get user;
  $WordEntityCopyWith<$Res> get word;
}

/// @nodoc
class _$FavoriteEntityCopyWithImpl<$Res, $Val extends FavoriteEntity>
    implements $FavoriteEntityCopyWith<$Res> {
  _$FavoriteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idWord = freezed,
    Object? user = null,
    Object? word = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idWord: freezed == idWord
          ? _value.idWord
          : idWord // ignore: cast_nullable_to_non_nullable
              as int?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as WordEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WordEntityCopyWith<$Res> get word {
    return $WordEntityCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FavoriteEntityCopyWith<$Res>
    implements $FavoriteEntityCopyWith<$Res> {
  factory _$$_FavoriteEntityCopyWith(
          _$_FavoriteEntity value, $Res Function(_$_FavoriteEntity) then) =
      __$$_FavoriteEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int? idWord, UserEntity user, WordEntity word});

  @override
  $UserEntityCopyWith<$Res> get user;
  @override
  $WordEntityCopyWith<$Res> get word;
}

/// @nodoc
class __$$_FavoriteEntityCopyWithImpl<$Res>
    extends _$FavoriteEntityCopyWithImpl<$Res, _$_FavoriteEntity>
    implements _$$_FavoriteEntityCopyWith<$Res> {
  __$$_FavoriteEntityCopyWithImpl(
      _$_FavoriteEntity _value, $Res Function(_$_FavoriteEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idWord = freezed,
    Object? user = null,
    Object? word = null,
  }) {
    return _then(_$_FavoriteEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idWord: freezed == idWord
          ? _value.idWord
          : idWord // ignore: cast_nullable_to_non_nullable
              as int?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as WordEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteEntity implements _FavoriteEntity {
  const _$_FavoriteEntity(
      {required this.id, this.idWord, required this.user, required this.word});

  factory _$_FavoriteEntity.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteEntityFromJson(json);

  @override
  final int id;
  @override
  final int? idWord;
  @override
  final UserEntity user;
  @override
  final WordEntity word;

  @override
  String toString() {
    return 'FavoriteEntity(id: $id, idWord: $idWord, user: $user, word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idWord, idWord) || other.idWord == idWord) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.word, word) || other.word == word));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, idWord, user, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteEntityCopyWith<_$_FavoriteEntity> get copyWith =>
      __$$_FavoriteEntityCopyWithImpl<_$_FavoriteEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteEntityToJson(
      this,
    );
  }
}

abstract class _FavoriteEntity implements FavoriteEntity {
  const factory _FavoriteEntity(
      {required final int id,
      final int? idWord,
      required final UserEntity user,
      required final WordEntity word}) = _$_FavoriteEntity;

  factory _FavoriteEntity.fromJson(Map<String, dynamic> json) =
      _$_FavoriteEntity.fromJson;

  @override
  int get id;
  @override
  int? get idWord;
  @override
  UserEntity get user;
  @override
  WordEntity get word;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteEntityCopyWith<_$_FavoriteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
