import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/domain/app_notifications.dart';
import 'package:vortaro/app/domain/error_entity/error_entity.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/app/ui/components/app_dialog_two_params.dart';
import 'package:vortaro/app/ui/components/app_snack_bar.dart';

import '../domain/auth_state/auth_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Esperanto"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              AppNotifications().cancelAllNotifications();
              context.read<AuthCubit>().logOut();
            },
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
        state.whenOrNull(
          authorized: (userEntity) {
            if (userEntity.userState?.hasData == true) {
              AppSnackBar.showSnackBarWithMessage(
                  context, userEntity.userState?.data);
            }
            if (userEntity.userState?.hasError == true) {
              AppSnackBar.showSnackBarWithError(context,
                  ErrorEntity.fromException(userEntity.userState?.error));
            }
          },
        );
      }, builder: (context, state) {
        final userEntity =
            state.whenOrNull(authorized: (userEntity) => userEntity);
        if (userEntity?.userState?.connectionState == ConnectionState.waiting) {
          return const AppLoader();
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  userEntity?.username?.split("").first ?? "Отсутствует",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                userEntity?.username ?? "",
                style: theme.textTheme.labelMedium,
              ),
              Text(userEntity?.email ?? ""),
              Row(
                children: [
                  // CircleAvatar(
                  //   child: Text(
                  //       userEntity?.username?.split("").first ?? "Отсутствует"),
                  // ),
                  // const SizedBox(
                  //   width: 16,
                  // ),
                  // Column(
                  //   children: [
                  //     Text(userEntity?.username ?? ""),
                  //     Text(userEntity?.email ?? ""),
                  //   ],
                  // ),
                  // IconButton(
                  //   onPressed: () {
                  //     context.read<AuthCubit>().logOut();
                  //   },
                  //   icon: const Icon(Icons.exit_to_app),
                  // )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AppDialogTwoParams(
                                  val1: "Пароль",
                                  val2: "Новый пароль",
                                  onPressed: (v1, v2) {
                                    context.read<AuthCubit>().passwordUpdate(
                                          oldPassword: v1,
                                          newPassword: v2,
                                        );
                                  },
                                ));
                      },
                      child: const Text("Обновить пароль")),
                  TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AppDialogTwoParams(
                                  val1: "Почта",
                                  val2: "Логин",
                                  onPressed: (v1, v2) {
                                    context.read<AuthCubit>().userUpdate(
                                          email: v1,
                                          username: v2,
                                        );
                                  },
                                ));
                      },
                      child: const Text("Обновить данные")),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
