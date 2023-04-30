import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';

import '../domain/auth_state/auth_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Личный кабинет"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<AuthCubit>().logOut();
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      // body: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      //   final UserEntity userEntity = state.whenOrNull(
      //     authorized: ((userEntity) => userEntity)
      //   );
      //   return Column(
      //     children: [
      //       Row(
      //         children: [
      //           CircleAvatar(
      //             child: Text(""),
      //           )
      //         ],
      //       )
      //     ],
      //   );
      // }),
    );
  }
}
