import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/ui/components/app_button.dart';
import 'package:vortaro/app/ui/components/app_text_field.dart';

import '../domain/auth_state/auth_cubit.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final controllerLogin = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerRepeatPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RegisterScreen"),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextField(controller: controllerLogin, labelText: "Логин"),
                const SizedBox(height: 16),
                AppTextField(controller: controllerEmail, labelText: "Email"),
                const SizedBox(height: 16),
                AppTextField(
                  controller: controllerPassword,
                  labelText: "Пароль",
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: controllerRepeatPassword,
                  labelText: "Повторите пароль",
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                AppButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    if (formKey.currentState?.validate() != true) return;
                    if (controllerPassword.text !=
                        controllerRepeatPassword.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Пароли не совпадают")));
                    } else {
                      _onTapToSignUp(context.read<AuthCubit>());
                      Navigator.of(context).pop();
                    }
                  },
                  text: "Регистрация",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapToSignUp(AuthCubit authCubit) => authCubit.signUp(
      username: controllerLogin.text,
      password: controllerPassword.text,
      email: controllerEmail.text);
}
