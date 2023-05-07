import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/feature/favorites/domain/entity/favorite_entity.dart';
import 'package:vortaro/feature/favorites/ui/favorite_item.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  TextEditingController textSearchEditingController = TextEditingController();

  List<FavoriteEntity> result = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Esperanto"),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<WordCubit, WordState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.favoriteList.isNotEmpty) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textSearchEditingController,
                    onChanged: (value) {
                      if (textSearchEditingController.text.isEmpty) {
                        result = state.favoriteList;
                        context.read<WordCubit>().fetchFavorites();
                      } else {
                        result = state.favoriteList
                            .where((element) => element.word!.title
                                .toLowerCase()
                                .contains(textSearchEditingController.text
                                    .toLowerCase()))
                            .toList();
                        context.read<WordCubit>().fetchWords();
                        context.read<WordCubit>().fetchFavorites();
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
                textSearchEditingController.text.isNotEmpty
                    ? Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: result.length,
                            itemBuilder: (context, index) {
                              return FavoriteItem(favoriteEntity: result[index]);
                            },
                          ),
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.favoriteList.length,
                            itemBuilder: (context, index) {
                              return FavoriteItem(
                                  favoriteEntity: state.favoriteList[index]);
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
