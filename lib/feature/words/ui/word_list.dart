import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
import 'package:vortaro/feature/words/ui/word_item.dart';

class WordList extends StatelessWidget {
  const WordList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WordCubit, WordState>(
      listener: (context, state) {
        // TODO
      },
      builder: (context, state) {
        if (state.wordList.isNotEmpty) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.wordList.length,
            itemBuilder: (context, index) {
              return WordItem(wordEntity: state.wordList[index]);
            },
          );
        }
        if (state.asyncSnapshot?.connectionState == ConnectionState.waiting) {
          return const AppLoader();
        }
        return const SizedBox.shrink();
      },
    );
  }
}
