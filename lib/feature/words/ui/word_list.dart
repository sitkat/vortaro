import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
import 'package:vortaro/feature/words/ui/word_item.dart';

class WordList extends StatefulWidget {
  const WordList({Key? key}) : super(key: key);

  @override
  State<WordList> createState() => _WordListState();
}

class _WordListState extends State<WordList> {
  TextEditingController textSearchEditingController = TextEditingController();

  List<WordEntity> result = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WordCubit, WordState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.wordList.isNotEmpty) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textSearchEditingController,
                  onChanged: (value) {
                    if (textSearchEditingController.text.isEmpty) {
                      result = state.wordList;
                      context.read<WordCubit>().fetchWords();
                    } else {
                      result = state.wordList
                          .where((element) => element.title
                              .toLowerCase()
                              .contains(textSearchEditingController.text
                                  .toLowerCase()))
                          .toList();
                      context.read<WordCubit>().fetchWords();
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Поиск...',
                    labelText: 'Поиск',
                    labelStyle: const TextStyle(color: Colors.black38),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black38,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black38),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              if (textSearchEditingController.text.isNotEmpty)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: result.length,
                      itemBuilder: (context, index) {
                        return WordItem(wordEntity: result[index]);
                      },
                    ),
                  ),
                )
              else
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.wordList.length,
                      itemBuilder: (context, index) {
                        return WordItem(wordEntity: state.wordList[index]);
                      },
                    ),
                  ),
                ),
            ],
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

// class WordList extends StatelessWidget {
//   const WordList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<WordCubit, WordState>(
//       listener: (context, state) {
//         // TODO
//       },
//       builder: (context, state) {
//         if (state.wordList.isNotEmpty) {
//           return ListView.builder(
//             shrinkWrap: true,
//             itemCount: state.wordList.length,
//             itemBuilder: (context, index) {
//               return WordItem(wordEntity: state.wordList[index]);
//             },
//           );
//         }
//         if (state.asyncSnapshot?.connectionState == ConnectionState.waiting) {
//           return const AppLoader();
//         }
//         return const SizedBox.shrink();
//       },
//     );
//   }
// }
