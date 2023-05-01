// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WordState _$$_WordStateFromJson(Map<String, dynamic> json) => _$_WordState(
      wordList: (json['wordList'] as List<dynamic>?)
              ?.map((e) => WordEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_WordStateToJson(_$_WordState instance) =>
    <String, dynamic>{
      'wordList': instance.wordList,
    };
