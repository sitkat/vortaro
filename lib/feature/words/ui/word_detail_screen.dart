import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/di/init_di.dart';
import 'package:vortaro/app/domain/error_entity/error_entity.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/app/ui/components/app_snack_bar.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/state/detail_word/detail_word_cubit.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

class WordDetailScreen extends StatelessWidget {
  const WordDetailScreen({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DetailWordCubit(locator.get<WordRepository>(), id)..fetchWord(),
      child: const _WordDetailView(),
    );
  }
}

class _WordDetailView extends StatelessWidget {
  const _WordDetailView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Detail"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         context.read<DetailWordCubit>().deleteWord().then((_) {
      //           context.read<WordCubit>().fetchWords();
      //           Navigator.pop(context);
      //         });
      //       },
      //       icon: const Icon(Icons.delete),
      //     )
      //   ],
      // ),
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
