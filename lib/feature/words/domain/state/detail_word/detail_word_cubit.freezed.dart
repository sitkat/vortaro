// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_word_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailWordState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic> get asyncSnapshot =>
      throw _privateConstructorUsedError;
  WordEntity? get wordEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailWordStateCopyWith<DetailWordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailWordStateCopyWith<$Res> {
  factory $DetailWordStateCopyWith(
          DetailWordState value, $Res Function(DetailWordState) then) =
      _$DetailWordStateCopyWithImpl<$Res, DetailWordState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic> asyncSnapshot,
      WordEntity? wordEntity});

  $WordEntityCopyWith<$Res>? get wordEntity;
}

/// @nodoc
class _$DetailWordStateCopyWithImpl<$Res, $Val extends DetailWordState>
    implements $DetailWordStateCopyWith<$Res> {
  _$DetailWordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? wordEntity = freezed,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      wordEntity: freezed == wordEntity
          ? _value.wordEntity
          : wordEntity // ignore: cast_nullable_to_non_nullable
              as WordEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WordEntityCopyWith<$Res>? get wordEntity {
    if (_value.wordEntity == null) {
      return null;
    }

    return $WordEntityCopyWith<$Res>(_value.wordEntity!, (value) {
      return _then(_value.copyWith(wordEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailWordStateCopyWith<$Res>
    implements $DetailWordStateCopyWith<$Res> {
  factory _$$_DetailWordStateCopyWith(
          _$_DetailWordState value, $Res Function(_$_DetailWordState) then) =
      __$$_DetailWordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic> asyncSnapshot,
      WordEntity? wordEntity});

  @override
  $WordEntityCopyWith<$Res>? get wordEntity;
}

/// @nodoc
class __$$_DetailWordStateCopyWithImpl<$Res>
    extends _$DetailWordStateCopyWithImpl<$Res, _$_DetailWordState>
    implements _$$_DetailWordStateCopyWith<$Res> {
  __$$_DetailWordStateCopyWithImpl(
      _$_DetailWordState _value, $Res Function(_$_DetailWordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? wordEntity = freezed,
  }) {
    return _then(_$_DetailWordState(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      wordEntity: freezed == wordEntity
          ? _value.wordEntity
          : wordEntity // ignore: cast_nullable_to_non_nullable
              as WordEntity?,
    ));
  }
}

/// @nodoc

class _$_DetailWordState implements _DetailWordState {
  const _$_DetailWordState(
      {@JsonKey(ignore: true)
          this.asyncSnapshot = const AsyncSnapshot.nothing(),
      this.wordEntity});

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic> asyncSnapshot;
  @override
  final WordEntity? wordEntity;

  @override
  String toString() {
    return 'DetailWordState(asyncSnapshot: $asyncSnapshot, wordEntity: $wordEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailWordState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            (identical(other.wordEntity, wordEntity) ||
                other.wordEntity == wordEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot, wordEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailWordStateCopyWith<_$_DetailWordState> get copyWith =>
      __$$_DetailWordStateCopyWithImpl<_$_DetailWordState>(this, _$identity);
}

abstract class _DetailWordState implements DetailWordState {
  const factory _DetailWordState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic> asyncSnapshot,
      final WordEntity? wordEntity}) = _$_DetailWordState;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic> get asyncSnapshot;
  @override
  WordEntity? get wordEntity;
  @override
  @JsonKey(ignore: true)
  _$$_DetailWordStateCopyWith<_$_DetailWordState> get copyWith =>
      throw _privateConstructorUsedError;
}
