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

/// @nodoc
mixin _$WordState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<WordEntity> get wordList => throw _privateConstructorUsedError;
  List<FavoriteEntity> get favoriteList => throw _privateConstructorUsedError;
  int get fetchLimit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

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
      List<FavoriteEntity> favoriteList,
      int fetchLimit,
      int offset});
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
    Object? fetchLimit = null,
    Object? offset = null,
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
      fetchLimit: null == fetchLimit
          ? _value.fetchLimit
          : fetchLimit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
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
      List<FavoriteEntity> favoriteList,
      int fetchLimit,
      int offset});
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
    Object? fetchLimit = null,
    Object? offset = null,
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
      fetchLimit: null == fetchLimit
          ? _value.fetchLimit
          : fetchLimit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WordState implements _WordState {
  const _$_WordState(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<WordEntity> wordList = const [],
      final List<FavoriteEntity> favoriteList = const [],
      this.fetchLimit = 20,
      this.offset = 0})
      : _wordList = wordList,
        _favoriteList = favoriteList;

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
  @JsonKey()
  final int fetchLimit;
  @override
  @JsonKey()
  final int offset;

  @override
  String toString() {
    return 'WordState(asyncSnapshot: $asyncSnapshot, wordList: $wordList, favoriteList: $favoriteList, fetchLimit: $fetchLimit, offset: $offset)';
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
                .equals(other._favoriteList, _favoriteList) &&
            (identical(other.fetchLimit, fetchLimit) ||
                other.fetchLimit == fetchLimit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      asyncSnapshot,
      const DeepCollectionEquality().hash(_wordList),
      const DeepCollectionEquality().hash(_favoriteList),
      fetchLimit,
      offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordStateCopyWith<_$_WordState> get copyWith =>
      __$$_WordStateCopyWithImpl<_$_WordState>(this, _$identity);
}

abstract class _WordState implements WordState {
  const factory _WordState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<WordEntity> wordList,
      final List<FavoriteEntity> favoriteList,
      final int fetchLimit,
      final int offset}) = _$_WordState;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<WordEntity> get wordList;
  @override
  List<FavoriteEntity> get favoriteList;
  @override
  int get fetchLimit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$_WordStateCopyWith<_$_WordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWords,
    required TResult Function() fetchFavorites,
    required TResult Function(Map<String, dynamic> args) createWord,
    required TResult Function(String id, Map<String, dynamic> args) updateWord,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWords,
    TResult? Function()? fetchFavorites,
    TResult? Function(Map<String, dynamic> args)? createWord,
    TResult? Function(String id, Map<String, dynamic> args)? updateWord,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWords,
    TResult Function()? fetchFavorites,
    TResult Function(Map<String, dynamic> args)? createWord,
    TResult Function(String id, Map<String, dynamic> args)? updateWord,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WordEventFetchWords value) fetchWords,
    required TResult Function(_WordEventFetchFavorites value) fetchFavorites,
    required TResult Function(_WordEventCreateWord value) createWord,
    required TResult Function(_WordEventUpdateWord value) updateWord,
    required TResult Function(_WordEventLogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WordEventFetchWords value)? fetchWords,
    TResult? Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult? Function(_WordEventCreateWord value)? createWord,
    TResult? Function(_WordEventUpdateWord value)? updateWord,
    TResult? Function(_WordEventLogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WordEventFetchWords value)? fetchWords,
    TResult Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult Function(_WordEventCreateWord value)? createWord,
    TResult Function(_WordEventUpdateWord value)? updateWord,
    TResult Function(_WordEventLogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordEventCopyWith<$Res> {
  factory $WordEventCopyWith(WordEvent value, $Res Function(WordEvent) then) =
      _$WordEventCopyWithImpl<$Res, WordEvent>;
}

/// @nodoc
class _$WordEventCopyWithImpl<$Res, $Val extends WordEvent>
    implements $WordEventCopyWith<$Res> {
  _$WordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WordEventFetchWordsCopyWith<$Res> {
  factory _$$_WordEventFetchWordsCopyWith(_$_WordEventFetchWords value,
          $Res Function(_$_WordEventFetchWords) then) =
      __$$_WordEventFetchWordsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WordEventFetchWordsCopyWithImpl<$Res>
    extends _$WordEventCopyWithImpl<$Res, _$_WordEventFetchWords>
    implements _$$_WordEventFetchWordsCopyWith<$Res> {
  __$$_WordEventFetchWordsCopyWithImpl(_$_WordEventFetchWords _value,
      $Res Function(_$_WordEventFetchWords) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WordEventFetchWords extends _WordEventFetchWords {
  _$_WordEventFetchWords() : super._();

  @override
  String toString() {
    return 'WordEvent.fetchWords()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WordEventFetchWords);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWords,
    required TResult Function() fetchFavorites,
    required TResult Function(Map<String, dynamic> args) createWord,
    required TResult Function(String id, Map<String, dynamic> args) updateWord,
    required TResult Function() logOut,
  }) {
    return fetchWords();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWords,
    TResult? Function()? fetchFavorites,
    TResult? Function(Map<String, dynamic> args)? createWord,
    TResult? Function(String id, Map<String, dynamic> args)? updateWord,
    TResult? Function()? logOut,
  }) {
    return fetchWords?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWords,
    TResult Function()? fetchFavorites,
    TResult Function(Map<String, dynamic> args)? createWord,
    TResult Function(String id, Map<String, dynamic> args)? updateWord,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (fetchWords != null) {
      return fetchWords();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WordEventFetchWords value) fetchWords,
    required TResult Function(_WordEventFetchFavorites value) fetchFavorites,
    required TResult Function(_WordEventCreateWord value) createWord,
    required TResult Function(_WordEventUpdateWord value) updateWord,
    required TResult Function(_WordEventLogOut value) logOut,
  }) {
    return fetchWords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WordEventFetchWords value)? fetchWords,
    TResult? Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult? Function(_WordEventCreateWord value)? createWord,
    TResult? Function(_WordEventUpdateWord value)? updateWord,
    TResult? Function(_WordEventLogOut value)? logOut,
  }) {
    return fetchWords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WordEventFetchWords value)? fetchWords,
    TResult Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult Function(_WordEventCreateWord value)? createWord,
    TResult Function(_WordEventUpdateWord value)? updateWord,
    TResult Function(_WordEventLogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (fetchWords != null) {
      return fetchWords(this);
    }
    return orElse();
  }
}

abstract class _WordEventFetchWords extends WordEvent {
  factory _WordEventFetchWords() = _$_WordEventFetchWords;
  _WordEventFetchWords._() : super._();
}

/// @nodoc
abstract class _$$_WordEventFetchFavoritesCopyWith<$Res> {
  factory _$$_WordEventFetchFavoritesCopyWith(_$_WordEventFetchFavorites value,
          $Res Function(_$_WordEventFetchFavorites) then) =
      __$$_WordEventFetchFavoritesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WordEventFetchFavoritesCopyWithImpl<$Res>
    extends _$WordEventCopyWithImpl<$Res, _$_WordEventFetchFavorites>
    implements _$$_WordEventFetchFavoritesCopyWith<$Res> {
  __$$_WordEventFetchFavoritesCopyWithImpl(_$_WordEventFetchFavorites _value,
      $Res Function(_$_WordEventFetchFavorites) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WordEventFetchFavorites extends _WordEventFetchFavorites {
  _$_WordEventFetchFavorites() : super._();

  @override
  String toString() {
    return 'WordEvent.fetchFavorites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordEventFetchFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWords,
    required TResult Function() fetchFavorites,
    required TResult Function(Map<String, dynamic> args) createWord,
    required TResult Function(String id, Map<String, dynamic> args) updateWord,
    required TResult Function() logOut,
  }) {
    return fetchFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWords,
    TResult? Function()? fetchFavorites,
    TResult? Function(Map<String, dynamic> args)? createWord,
    TResult? Function(String id, Map<String, dynamic> args)? updateWord,
    TResult? Function()? logOut,
  }) {
    return fetchFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWords,
    TResult Function()? fetchFavorites,
    TResult Function(Map<String, dynamic> args)? createWord,
    TResult Function(String id, Map<String, dynamic> args)? updateWord,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (fetchFavorites != null) {
      return fetchFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WordEventFetchWords value) fetchWords,
    required TResult Function(_WordEventFetchFavorites value) fetchFavorites,
    required TResult Function(_WordEventCreateWord value) createWord,
    required TResult Function(_WordEventUpdateWord value) updateWord,
    required TResult Function(_WordEventLogOut value) logOut,
  }) {
    return fetchFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WordEventFetchWords value)? fetchWords,
    TResult? Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult? Function(_WordEventCreateWord value)? createWord,
    TResult? Function(_WordEventUpdateWord value)? updateWord,
    TResult? Function(_WordEventLogOut value)? logOut,
  }) {
    return fetchFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WordEventFetchWords value)? fetchWords,
    TResult Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult Function(_WordEventCreateWord value)? createWord,
    TResult Function(_WordEventUpdateWord value)? updateWord,
    TResult Function(_WordEventLogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (fetchFavorites != null) {
      return fetchFavorites(this);
    }
    return orElse();
  }
}

abstract class _WordEventFetchFavorites extends WordEvent {
  factory _WordEventFetchFavorites() = _$_WordEventFetchFavorites;
  _WordEventFetchFavorites._() : super._();
}

/// @nodoc
abstract class _$$_WordEventCreateWordCopyWith<$Res> {
  factory _$$_WordEventCreateWordCopyWith(_$_WordEventCreateWord value,
          $Res Function(_$_WordEventCreateWord) then) =
      __$$_WordEventCreateWordCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> args});
}

/// @nodoc
class __$$_WordEventCreateWordCopyWithImpl<$Res>
    extends _$WordEventCopyWithImpl<$Res, _$_WordEventCreateWord>
    implements _$$_WordEventCreateWordCopyWith<$Res> {
  __$$_WordEventCreateWordCopyWithImpl(_$_WordEventCreateWord _value,
      $Res Function(_$_WordEventCreateWord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_$_WordEventCreateWord(
      null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_WordEventCreateWord extends _WordEventCreateWord {
  _$_WordEventCreateWord(final Map<String, dynamic> args)
      : _args = args,
        super._();

  final Map<String, dynamic> _args;
  @override
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  String toString() {
    return 'WordEvent.createWord(args: $args)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordEventCreateWord &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordEventCreateWordCopyWith<_$_WordEventCreateWord> get copyWith =>
      __$$_WordEventCreateWordCopyWithImpl<_$_WordEventCreateWord>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWords,
    required TResult Function() fetchFavorites,
    required TResult Function(Map<String, dynamic> args) createWord,
    required TResult Function(String id, Map<String, dynamic> args) updateWord,
    required TResult Function() logOut,
  }) {
    return createWord(args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWords,
    TResult? Function()? fetchFavorites,
    TResult? Function(Map<String, dynamic> args)? createWord,
    TResult? Function(String id, Map<String, dynamic> args)? updateWord,
    TResult? Function()? logOut,
  }) {
    return createWord?.call(args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWords,
    TResult Function()? fetchFavorites,
    TResult Function(Map<String, dynamic> args)? createWord,
    TResult Function(String id, Map<String, dynamic> args)? updateWord,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (createWord != null) {
      return createWord(args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WordEventFetchWords value) fetchWords,
    required TResult Function(_WordEventFetchFavorites value) fetchFavorites,
    required TResult Function(_WordEventCreateWord value) createWord,
    required TResult Function(_WordEventUpdateWord value) updateWord,
    required TResult Function(_WordEventLogOut value) logOut,
  }) {
    return createWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WordEventFetchWords value)? fetchWords,
    TResult? Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult? Function(_WordEventCreateWord value)? createWord,
    TResult? Function(_WordEventUpdateWord value)? updateWord,
    TResult? Function(_WordEventLogOut value)? logOut,
  }) {
    return createWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WordEventFetchWords value)? fetchWords,
    TResult Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult Function(_WordEventCreateWord value)? createWord,
    TResult Function(_WordEventUpdateWord value)? updateWord,
    TResult Function(_WordEventLogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (createWord != null) {
      return createWord(this);
    }
    return orElse();
  }
}

abstract class _WordEventCreateWord extends WordEvent {
  factory _WordEventCreateWord(final Map<String, dynamic> args) =
      _$_WordEventCreateWord;
  _WordEventCreateWord._() : super._();

  Map<String, dynamic> get args;
  @JsonKey(ignore: true)
  _$$_WordEventCreateWordCopyWith<_$_WordEventCreateWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WordEventUpdateWordCopyWith<$Res> {
  factory _$$_WordEventUpdateWordCopyWith(_$_WordEventUpdateWord value,
          $Res Function(_$_WordEventUpdateWord) then) =
      __$$_WordEventUpdateWordCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, Map<String, dynamic> args});
}

/// @nodoc
class __$$_WordEventUpdateWordCopyWithImpl<$Res>
    extends _$WordEventCopyWithImpl<$Res, _$_WordEventUpdateWord>
    implements _$$_WordEventUpdateWordCopyWith<$Res> {
  __$$_WordEventUpdateWordCopyWithImpl(_$_WordEventUpdateWord _value,
      $Res Function(_$_WordEventUpdateWord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? args = null,
  }) {
    return _then(_$_WordEventUpdateWord(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_WordEventUpdateWord extends _WordEventUpdateWord {
  _$_WordEventUpdateWord(this.id, final Map<String, dynamic> args)
      : _args = args,
        super._();

  @override
  final String id;
  final Map<String, dynamic> _args;
  @override
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  String toString() {
    return 'WordEvent.updateWord(id: $id, args: $args)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordEventUpdateWord &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordEventUpdateWordCopyWith<_$_WordEventUpdateWord> get copyWith =>
      __$$_WordEventUpdateWordCopyWithImpl<_$_WordEventUpdateWord>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWords,
    required TResult Function() fetchFavorites,
    required TResult Function(Map<String, dynamic> args) createWord,
    required TResult Function(String id, Map<String, dynamic> args) updateWord,
    required TResult Function() logOut,
  }) {
    return updateWord(id, args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWords,
    TResult? Function()? fetchFavorites,
    TResult? Function(Map<String, dynamic> args)? createWord,
    TResult? Function(String id, Map<String, dynamic> args)? updateWord,
    TResult? Function()? logOut,
  }) {
    return updateWord?.call(id, args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWords,
    TResult Function()? fetchFavorites,
    TResult Function(Map<String, dynamic> args)? createWord,
    TResult Function(String id, Map<String, dynamic> args)? updateWord,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (updateWord != null) {
      return updateWord(id, args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WordEventFetchWords value) fetchWords,
    required TResult Function(_WordEventFetchFavorites value) fetchFavorites,
    required TResult Function(_WordEventCreateWord value) createWord,
    required TResult Function(_WordEventUpdateWord value) updateWord,
    required TResult Function(_WordEventLogOut value) logOut,
  }) {
    return updateWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WordEventFetchWords value)? fetchWords,
    TResult? Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult? Function(_WordEventCreateWord value)? createWord,
    TResult? Function(_WordEventUpdateWord value)? updateWord,
    TResult? Function(_WordEventLogOut value)? logOut,
  }) {
    return updateWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WordEventFetchWords value)? fetchWords,
    TResult Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult Function(_WordEventCreateWord value)? createWord,
    TResult Function(_WordEventUpdateWord value)? updateWord,
    TResult Function(_WordEventLogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (updateWord != null) {
      return updateWord(this);
    }
    return orElse();
  }
}

abstract class _WordEventUpdateWord extends WordEvent {
  factory _WordEventUpdateWord(
          final String id, final Map<String, dynamic> args) =
      _$_WordEventUpdateWord;
  _WordEventUpdateWord._() : super._();

  String get id;
  Map<String, dynamic> get args;
  @JsonKey(ignore: true)
  _$$_WordEventUpdateWordCopyWith<_$_WordEventUpdateWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WordEventLogOutCopyWith<$Res> {
  factory _$$_WordEventLogOutCopyWith(
          _$_WordEventLogOut value, $Res Function(_$_WordEventLogOut) then) =
      __$$_WordEventLogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WordEventLogOutCopyWithImpl<$Res>
    extends _$WordEventCopyWithImpl<$Res, _$_WordEventLogOut>
    implements _$$_WordEventLogOutCopyWith<$Res> {
  __$$_WordEventLogOutCopyWithImpl(
      _$_WordEventLogOut _value, $Res Function(_$_WordEventLogOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WordEventLogOut extends _WordEventLogOut {
  _$_WordEventLogOut() : super._();

  @override
  String toString() {
    return 'WordEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WordEventLogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWords,
    required TResult Function() fetchFavorites,
    required TResult Function(Map<String, dynamic> args) createWord,
    required TResult Function(String id, Map<String, dynamic> args) updateWord,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWords,
    TResult? Function()? fetchFavorites,
    TResult? Function(Map<String, dynamic> args)? createWord,
    TResult? Function(String id, Map<String, dynamic> args)? updateWord,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWords,
    TResult Function()? fetchFavorites,
    TResult Function(Map<String, dynamic> args)? createWord,
    TResult Function(String id, Map<String, dynamic> args)? updateWord,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WordEventFetchWords value) fetchWords,
    required TResult Function(_WordEventFetchFavorites value) fetchFavorites,
    required TResult Function(_WordEventCreateWord value) createWord,
    required TResult Function(_WordEventUpdateWord value) updateWord,
    required TResult Function(_WordEventLogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WordEventFetchWords value)? fetchWords,
    TResult? Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult? Function(_WordEventCreateWord value)? createWord,
    TResult? Function(_WordEventUpdateWord value)? updateWord,
    TResult? Function(_WordEventLogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WordEventFetchWords value)? fetchWords,
    TResult Function(_WordEventFetchFavorites value)? fetchFavorites,
    TResult Function(_WordEventCreateWord value)? createWord,
    TResult Function(_WordEventUpdateWord value)? updateWord,
    TResult Function(_WordEventLogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _WordEventLogOut extends WordEvent {
  factory _WordEventLogOut() = _$_WordEventLogOut;
  _WordEventLogOut._() : super._();
}
