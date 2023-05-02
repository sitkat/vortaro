import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/Utils/utils.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/state/detail_word/detail_word_cubit.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
import 'package:vortaro/feature/words/ui/word_detail_screen.dart';

class WordItem extends StatelessWidget {
  const WordItem({Key? key, required this.wordEntity}) : super(key: key);

  final WordEntity wordEntity;

  @override
  Widget build(BuildContext context) {
    AppUtils utils = AppUtils();
    return GestureDetector(
      // ToDo:??????????
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WordDetailScreen(id: wordEntity.id.toString()),
        ));
        // ),
      },
      // child: Card(
      //   color: Colors.grey.shade300,
      //   margin: const EdgeInsets.all(8),
      //   child: Row(
      //     children: [
      //       Column(
      //         children: [
      //           Text(wordEntity.title),
      //           Text(wordEntity.translation),
      //           // Text(wordEntity.edition.toString().split(" ")[0]),
      //           // Text("Автор: ${wordEntity.user?.id ?? ""}"),
      //         ],
      //       ),
      //     ],
      //   ),
      child: Card(
        color: Colors.grey.shade300,
        margin: const EdgeInsets.all(8),
        child: ListTile(
          title: Text(
            utils.stressWord(wordEntity.title),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400),
          ),
          subtitle: Text(utils.stressWord(wordEntity.translation)),
          trailing: Column(
            children: [
              Expanded(
                child: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    // context.read<DetailWordCubit>().deleteWord().then((_) {
                    //   context.read<WordCubit>().fetchWords();
                    //   Navigator.pop(context);
                    // });
                  },
                ),
              ),
            ],
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  WordDetailScreen(id: wordEntity.id.toString()),
            ));
          },
        ),
      ),
    );
  }
}
