import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/di/init_di.dart';
import 'package:vortaro/app/domain/app_notifications.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:vortaro/feature/favorites/domain/entity/favorite_entity.dart';
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

  bool isFavorite = false;

  final userId = locator
      .get<AuthCubit>()
      .state
      .whenOrNull(authorized: (userEntity) => userEntity.id);

  @override
  Widget build(BuildContext context) {
    AppUtils utils = AppUtils();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Esperanto"),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<WordCubit, WordState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.wordList.isNotEmpty) {
            int randomIndex = Random().nextInt(state.wordList.toList().length);
            var randomChoice = state.wordList[randomIndex];
            AppNotifications().showNotification(title: "Слово дня", body: "Слово: ${utils.stressWord(randomChoice.title)}, перевод: ${randomChoice.translation}");
            final List<FavoriteEntity> list = state.favoriteList.toList();
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
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black38),
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
                          obj(element) =>
                              element.word?.id == result[index].id &&
                              element.user?.id == userId;
                          var resultFav = list.where(obj);
                          if (resultFav.length > 0) {
                              isFavorite = true;
                          } else {
                              isFavorite = false;
                          }
                          return WordItem(
                              wordEntity: result[index], isFavorite: isFavorite);
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
                          obj(element) =>
                              element.word?.id == state.wordList[index].id &&
                              element.user?.id == userId;
                          var resultFav = list.where(obj);
                          if (resultFav.length > 0) {
                              isFavorite = true;
                          } else {
                              isFavorite = false;
                          }
                          return WordItem(
                              wordEntity: state.wordList[index],
                              isFavorite: isFavorite);
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
      ),
    );
  }
}