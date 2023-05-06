import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';

part 'favorite_entity.freezed.dart';

part 'favorite_entity.g.dart';

@freezed
class FavoriteEntity with _$FavoriteEntity {
  const factory FavoriteEntity({
    required int id,
    int? idWord,
    required UserEntity user,
    required WordEntity word,
  }) = _FavoriteEntity;

  factory FavoriteEntity.fromJson(Map<String, dynamic> json) =>
      _$FavoriteEntityFromJson(json);
}
