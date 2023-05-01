import 'package:flutter/material.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';

class WordItem extends StatelessWidget {
  const WordItem({Key? key, required this.wordEntity}) : super(key: key);

  final WordEntity wordEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Text(wordEntity.title),
          Text(wordEntity.translation),
          // Text(wordEntity.edition.toString().split(" ")[0]),
          // Text("Автор: ${wordEntity.user?.username ?? ""}"),
        ],
      ),
    );
  }
}
