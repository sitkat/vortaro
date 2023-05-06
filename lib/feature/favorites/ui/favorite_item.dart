import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/feature/favorites/domain/entity/favorite_entity.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/state/detail_word/detail_word_cubit.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
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
        // trailing: Column(
        //   children: [
        //     Expanded(
        //       child: IconButton(
        //         icon: const Icon(
        //           Icons.delete,
        //           color: Colors.black87,
        //         ),
        //         onPressed: () {
        //           context.read<DetailWordCubit>().deleteFromFavorite().then((_) {
        //             context.read<WordCubit>().fetchFavorites();
        //           });
        //           context.read<WordCubit>().updateWord(
        //               favoriteEntity.idWord.toString(),
        //               {
        //                 "title": favoriteEntity.word!.title,
        //                 "translation": favoriteEntity.word!.translation,
        //                 "description": favoriteEntity.word!.description,
        //                 "isFavorite": false
        //               });
        //         },
        //       ),
        //     ),
        //   ],
        // ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => WordDetailScreen(wordEntity: favoriteEntity.word!),
          ));
        },
      ),
    );
  }
}
