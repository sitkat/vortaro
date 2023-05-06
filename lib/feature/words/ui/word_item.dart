import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/domain/error_entity/error_entity.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/app/ui/components/app_snack_bar.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:vortaro/feature/favorites/domain/entity/favorite_entity.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
import 'package:vortaro/feature/words/ui/word_detail_screen.dart';

class WordItem extends StatelessWidget {
  const WordItem({Key? key, required this.wordEntity, this.isFavorite})
      : super(key: key);

  final WordEntity wordEntity;
  final bool? isFavorite;

  @override
  Widget build(BuildContext context) {
    AppUtils utils = AppUtils();
    return Card(
      color: Colors.grey.shade300,
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(
          utils.stressWord(wordEntity.title),
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        subtitle: Text(utils.stressWord(wordEntity.translation)),
        trailing: Column(
          children: [
            isFavorite == true
                ? const Expanded(child: Icon(Icons.favorite))
                : const SizedBox.shrink(),
            // favoriteEntity.user.id == userEntity?.id && favoriteEntity.word.id == wordEntity.id
            //     ? const Expanded(child: Icon(Icons.favorite))
            //     : const SizedBox.shrink(),

            // Expanded(
            //   child: wordEntity.isFavorite == false
            //       ? const SizedBox.shrink()
            //       : const Icon(
            //           Icons.favorite,
            //         ),
            // ),
            // Expanded(
            //   child: IconButton(
            //     icon: const Icon(
            //       Icons.delete,
            //       color: Colors.black87,
            //     ),
            //     onPressed: () {
            //       // context.read<DetailWordCubit>().deleteWord().then((_) {
            //       //   context.read<WordCubit>().fetchWords();
            //       //   Navigator.pop(context);
            //       // });
            //     },
            //   ),
            // ),
          ],
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => WordDetailScreen(wordEntity: wordEntity),
          ));
        },
      ),
    );
  }
}
