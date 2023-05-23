import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/domain/app_notifications.dart';
import 'package:vortaro/app/domain/error_entity/error_entity.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/app/ui/components/app_dialog_three_params.dart';
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
        title: Text(
          "Esperanto",
          style: theme.textTheme.displayLarge,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 65,
                      backgroundColor: Colors.lightGreenAccent,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'assets/images/default_user.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 45),
                        Text(
                          userEntity?.username ?? "",
                          style: const TextStyle(
                            fontFamily: "Muli",
                            fontSize: 24,
                            color: Color(0xff070707),
                          ),
                        ),
                        Text(
                          userEntity?.email ?? "",
                          style: TextStyle(
                            fontFamily: "Muli",
                            fontSize: 16,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(color: Colors.grey),
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
                  child: Row(
                    children: [
                      const Icon(Icons.edit),
                      const SizedBox(width: 5),
                      Text(
                        "Обновить данные",
                        style: theme.textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
                const Divider(color: Colors.grey),
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AppDialogThreeParams(
                              val1: "Текущий пароль",
                              val2: "Новый пароль",
                              val3: "Повторите новый пароль",
                              onPressed: (v1, v2, v3) {
                                if (v2 != v3) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text("Пароли не совпадают")));
                                } else {
                                  context.read<AuthCubit>().passwordUpdate(
                                        oldPassword: v1,
                                        newPassword: v2,
                                      );
                                }
                              },
                            ));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.lock),
                      const SizedBox(width: 5),
                      Text(
                        "Изменить пароль",
                        style: theme.textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
                const Divider(color: Colors.grey),
                TextButton(
                  onPressed: () {
                    AppNotifications().cancelAllNotifications();
                    context.read<AuthCubit>().logOut();
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.exit_to_app, color: Colors.black),
                      SizedBox(width: 5),
                      Text(
                        "Выйти",
                        style: TextStyle(
                          fontFamily: "Muli",
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
