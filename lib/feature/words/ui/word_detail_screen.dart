import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/di/init_di.dart';
import 'package:vortaro/app/domain/error_entity/error_entity.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/app/ui/components/app_snack_bar.dart';
import 'package:vortaro/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:vortaro/feature/favorites/domain/entity/favorite_entity.dart';
import 'package:vortaro/feature/favorites/domain/state/detail_favorite/detail_favorite_cubit.dart';
import 'package:vortaro/feature/favorites/domain/state/favorite_cubit.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/state/detail_word/detail_word_cubit.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

class WordDetailScreen extends StatelessWidget {
  const WordDetailScreen({Key? key, required this.wordEntity})
      : super(key: key);

  final WordEntity wordEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailWordCubit(
          locator.get<WordRepository>(), wordEntity.id.toString())
        ..fetchWord(),
      child: _WordDetailView(wordEntity),
    );
  }
}

class _WordDetailView extends StatefulWidget {
  const _WordDetailView(this.wordEntity);

  final WordEntity wordEntity;

  @override
  State<StatefulWidget> createState() => __WordDetailViewState();
}

class __WordDetailViewState extends State<_WordDetailView> {
  final userId = locator
      .get<AuthCubit>()
      .state
      .whenOrNull(authorized: (userEntity) => userEntity.id);
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Информация"),
        actions: [
          BlocConsumer<WordCubit, WordState>(
            listener: (context, state) {},
            builder: (context, state) {
              final List<FavoriteEntity> list = state.favoriteList.toList();
              obj(element) =>
                  element.word?.id == widget.wordEntity.id &&
                  element.user?.id == userId;
              var resultFav = list.where(obj);
              if (resultFav.length > 0) {
                return IconButton(
                  onPressed: () {
                    FavoriteEntity favoriteEntity = resultFav.first;
                    context
                        .read<DetailWordCubit>()
                        .deleteFromFavorite(favoriteEntity.id.toString())
                        .then((_) {
                      context.read<WordCubit>().fetchFavorites();
                    });
                  },
                  icon: Icon(Icons.favorite),
                );
              }
              if (resultFav.length == 0) {
                return IconButton(
                  onPressed: () {
                    context.read<DetailWordCubit>().addToFavorite(
                        {"idWord": widget.wordEntity.id}).then((_) {
                      context.read<WordCubit>().fetchFavorites();
                    });
                  },
                  icon: Icon(Icons.favorite_border),
                );
              }
              if (state.asyncSnapshot?.connectionState ==
                  ConnectionState.waiting) {
                return const AppLoader();
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: BlocConsumer<DetailWordCubit, DetailWordState>(
        builder: (context, state) {
          if (state.asyncSnapshot.connectionState == ConnectionState.waiting) {
            return const AppLoader();
          }
          if (state.wordEntity != null) {
            return _WordDetailItem(
              wordEntity: state.wordEntity!,
            );
          }
          return const Center(
            child: Text("Упс, что-то пошло не так"),
          );
        },
        listener: (context, state) {
          if (state.asyncSnapshot.hasData) {
            AppSnackBar.showSnackBarWithMessage(
                context, state.asyncSnapshot.data.toString());
          }
          if (state.asyncSnapshot.hasError) {
            AppSnackBar.showSnackBarWithError(
                context, ErrorEntity.fromException(state.asyncSnapshot.error));
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}

class _WordDetailItem extends StatelessWidget {
  const _WordDetailItem({required this.wordEntity});

  final WordEntity wordEntity;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("Слово: ${wordEntity.title}"),
        Text("Перевод: ${wordEntity.translation}"),
        Text("Описание: ${wordEntity.description ?? ""}"),
        Text("Редакция: ${wordEntity.edition.toString().split(" ")[0]}"),
        // Text("Автор: ${wordEntity.user?.username ?? ""}"),
      ],
    );
  }
}
