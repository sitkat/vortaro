import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/di/init_di.dart';
import 'package:vortaro/app/domain/error_entity/error_entity.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/app/ui/components/app_icon_button.dart';
import 'package:vortaro/app/ui/components/app_snack_bar.dart';
import 'package:vortaro/app/utils/app_tts.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:vortaro/feature/favorites/domain/entity/favorite_entity.dart';
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
    isFavorite = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: SafeArea(
            child: AppBar(
              actions: [
                BlocConsumer<WordBloc, WordState>(
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
                            context.read<WordBloc>().add(WordEvent.fetchFavorites());
                          });
                        },
                        icon: const Icon(Icons.favorite, color: Colors.deepOrangeAccent),
                      );
                    }
                    if (resultFav.length == 0) {
                      return IconButton(
                        onPressed: () {
                          context.read<DetailWordCubit>().addToFavorite(
                              {"idWord": widget.wordEntity.id}).then((_) {
                            context.read<WordBloc>().add(WordEvent.fetchFavorites());
                          });
                        },
                        icon: const Icon(Icons.favorite_border, color: Colors.deepOrangeAccent),
                      );
                    }
                    if (state.asyncSnapshot?.connectionState ==
                        ConnectionState.waiting) {
                      return const AppLoader();
                    }
                    return const SizedBox.shrink();
                  },
                ),
                const SizedBox(width: 15),
              ],
            ),
          ),
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
    AppTts appTts = AppTts();
    AppUtils utils = AppUtils();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        children: [
          Text(utils.stressWord(wordEntity.title),
            style: const TextStyle(
                fontFamily: "Jura",
                color: Colors.black87, fontSize: 32, fontWeight: FontWeight.w700),
          ),
          Row(
            children: [
              Expanded(
                child: Text(wordEntity.translation,
                  style: const TextStyle(
                      fontFamily: "Jura",
                      color: Colors.green, fontSize: 26, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                // padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: AppIconButton(
                  onPressed: () {
                    appTts.speak(wordEntity.translation,
                        'eo');
                  },
                  icon: const Icon(Icons.volume_down_outlined),
                ),
              ),
            ],
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.lightGreen.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Описание",
                  maxLines: 20,
                  style: TextStyle(
                      fontFamily: "Muli",
                      color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w700),),
                const SizedBox(height: 15),
                Text("- ${utils.stressWord(wordEntity.description!) ?? ""}",
                  style: const TextStyle(
                      fontFamily: "Muli",
                      color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Редакция",
                  maxLines: 20,
                  style: TextStyle(
                      fontFamily: "Muli",
                      color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w700),),
                const SizedBox(height: 15),
                Text(wordEntity.edition.toString().split(" ")[0],
                  style: const TextStyle(
                      fontFamily: "Muli",
                      color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


