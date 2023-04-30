import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/di/init_di.dart';
import 'package:vortaro/app/domain/app_api.dart';
import 'package:vortaro/app/ui/components/app_button.dart';
import 'package:vortaro/app/ui/components/app_text_field.dart';
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
      body: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
        final userEntity =
            state.whenOrNull(authorized: (userEntity) => userEntity);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Text(
                        userEntity?.username.split("").first ?? "Отсутствует"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Text(userEntity?.username ?? ""),
                      Text(userEntity?.email ?? ""),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {}, child: const Text("Обновить пароль")),
                  TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => _ProfileUpdateDialog());
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

class _ProfileUpdateDialog extends StatefulWidget {
  const _ProfileUpdateDialog({Key? key}) : super(key: key);

  @override
  State<_ProfileUpdateDialog> createState() => _ProfileUpdateDialogState();
}

class _ProfileUpdateDialogState extends State<_ProfileUpdateDialog> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AppTextField(controller: emailController, labelText: "email"),
              const SizedBox(height: 16),
              AppTextField(
                  controller: usernameController, labelText: "Username"),
              const SizedBox(height: 16),
              AppButton(
                  onPressed: () {
                    context.read<AuthCubit>().userUpdate(
                        email: emailController.text,
                        username: usernameController.text);
                  },
                  text: "Применить"),
            ],
          ),
        )
      ],
    );
  }
}
