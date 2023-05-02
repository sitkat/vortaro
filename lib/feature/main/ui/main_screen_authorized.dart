import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/ui/components/app_dialog_three_params.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:vortaro/feature/auth/ui/profile_screen.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
import 'package:vortaro/feature/words/ui/word_list.dart';

class MainScreenAuthorized extends StatelessWidget {
  const MainScreenAuthorized({Key? key, required this.userEntity})
      : super(key: key);

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MainScreen"),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  )),
              icon: const Icon(Icons.account_box)),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AppDialogThreeParams(
                      val1: "Слово",
                      val2: "Перевод",
                      val3: "Описание",
                      onPressed: ((v1, v2, v3) {
                        context.read<WordCubit>().createWord({
                          "title": v1,
                          "translation": v2,
                          "description": v3,
                        });
                      })),
                );
              },
              icon: const Icon(Icons.email)),
        ],
      ),
      body: const WordList(),
    );
  }
}
