import 'package:flutter/material.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
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
          maxLines: 1,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        subtitle: Text(
          utils.stressWord(wordEntity.translation),
          maxLines: 1,
        ),
        trailing: Column(
          children: [
            isFavorite == true
                ? const Expanded(child: Icon(Icons.favorite))
                : const SizedBox.shrink(),
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
