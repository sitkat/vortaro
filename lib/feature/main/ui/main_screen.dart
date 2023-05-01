import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/components/app_dialog_two_params.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:vortaro/feature/auth/ui/profile_screen.dart';
import 'package:vortaro/feature/words/ui/word_list.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.userEntity}) : super(key: key);

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
                showDialog(context: context, builder: (context) => AppDialogTwoParams(val1: "val1", val2: "val2", onPressed: ((v1, v2) {
                  //
                })),);
              },
              icon: const Icon(Icons.email)),
          // IconButton(
          //     onPressed: () => context.read<AuthCubit>().logOut(),
          //     icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: const WordList(),
      // body: Column(
      //   children: [
      //     Text("username: ${userEntity.username}"),
      //     const SizedBox(height: 16),
      //     Text("accessToken: ${userEntity.accessToken}"),
      //     const SizedBox(height: 16),
      //     Text("refreshToken: ${userEntity.refreshToken}"),
      //     const SizedBox(height: 16),
      //   ],
      // ),
    );
  }
}
