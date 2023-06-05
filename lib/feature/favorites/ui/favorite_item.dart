import 'package:flutter/material.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/feature/favorites/domain/entity/favorite_entity.dart';
import 'package:vortaro/feature/words/ui/word_detail_screen.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({Key? key, required this.favoriteEntity}) : super(key: key);

  final FavoriteEntity favoriteEntity;

  @override
  Widget build(BuildContext context) {
    AppUtils utils = AppUtils();
    return Card(
      color: Colors.grey.shade300,
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(
          utils.stressWord(favoriteEntity.word!.title),
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400),
        ),
        subtitle: Text(utils.stressWord(favoriteEntity.word!.translation)),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => WordDetailScreen(wordEntity: favoriteEntity.word!),
          ));
        },
      ),
    );
  }
}
