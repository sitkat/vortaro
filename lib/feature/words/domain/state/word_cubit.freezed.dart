// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WordState _$WordStateFromJson(Map<String, dynamic> json) {
  return _WordState.fromJson(json);
}

/// @nodoc
mixin _$WordState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<WordEntity> get wordList => throw _privateConstructorUsedError;
  List<FavoriteEntity> get favoriteList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordStateCopyWith<WordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordStateCopyWith<$Res> {
  factory $WordStateCopyWith(WordState value, $Res Function(WordState) then) =
      _$WordStateCopyWithImpl<$Res, WordState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<WordEntity> wordList,
      List<FavoriteEntity> favoriteList});
}

/// @nodoc
class _$WordStateCopyWithImpl<$Res, $Val extends WordState>
    implements $WordStateCopyWith<$Res> {
  _$WordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? wordList = null,
    Object? favoriteList = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      wordList: null == wordList
          ? _value.wordList
          : wordList // ignore: cast_nullable_to_non_nullable
              as List<WordEntity>,
      favoriteList: null == favoriteList
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<FavoriteEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WordStateCopyWith<$Res> implements $WordStateCopyWith<$Res> {
  factory _$$_WordStateCopyWith(
          _$_WordState value, $Res Function(_$_WordState) then) =
      __$$_WordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<WordEntity> wordList,
      List<FavoriteEntity> favoriteList});
}

/// @nodoc
class __$$_WordStateCopyWithImpl<$Res>
    extends _$WordStateCopyWithImpl<$Res, _$_WordState>
    implements _$$_WordStateCopyWith<$Res> {
  __$$_WordStateCopyWithImpl(
      _$_WordState _value, $Res Function(_$_WordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? wordList = null,
    Object? favoriteList = null,
  }) {
    return _then(_$_WordState(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      wordList: null == wordList
          ? _value._wordList
          : wordList // ignore: cast_nullable_to_non_nullable
              as List<WordEntity>,
      favoriteList: null == favoriteList
          ? _value._favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<FavoriteEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WordState implements _WordState {
  const _$_WordState(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<WordEntity> wordList = const [],
      final List<FavoriteEntity> favoriteList = const []})
      : _wordList = wordList,
        _favoriteList = favoriteList;

  factory _$_WordState.fromJson(Map<String, dynamic> json) =>
      _$$_WordStateFromJson(json);

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  final List<WordEntity> _wordList;
  @override
  @JsonKey()
  List<WordEntity> get wordList {
    if (_wordList is EqualUnmodifiableListView) return _wordList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wordList);
  }

  final List<FavoriteEntity> _favoriteList;
  @override
  @JsonKey()
  List<FavoriteEntity> get favoriteList {
    if (_favoriteList is EqualUnmodifiableListView) return _favoriteList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteList);
  }

  @override
  String toString() {
    return 'WordState(asyncSnapshot: $asyncSnapshot, wordList: $wordList, favoriteList: $favoriteList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality().equals(other._wordList, _wordList) &&
            const DeepCollectionEquality()
                .equals(other._favoriteList, _favoriteList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      asyncSnapshot,
      const DeepCollectionEquality().hash(_wordList),
      const DeepCollectionEquality().hash(_favoriteList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordStateCopyWith<_$_WordState> get copyWith =>
      __$$_WordStateCopyWithImpl<_$_WordState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordStateToJson(
      this,
    );
  }
}

abstract class _WordState implements WordState {
  const factory _WordState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<WordEntity> wordList,
      final List<FavoriteEntity> favoriteList}) = _$_WordState;

  factory _WordState.fromJson(Map<String, dynamic> json) =
      _$_WordState.fromJson;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<WordEntity> get wordList;
  @override
  List<FavoriteEntity> get favoriteList;
  @override
  @JsonKey(ignore: true)
  _$$_WordStateCopyWith<_$_WordState> get copyWith =>
      throw _privateConstructorUsedError;
}
