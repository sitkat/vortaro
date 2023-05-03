import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/ui/components/app_button_max.dart';
import 'package:vortaro/app/ui/components/app_router/app_router_constants.dart';
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
    final theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffcbf6c6),
              Colors.white,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            tileMode: TileMode.clamp,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pushNamed(context, rootRoute),
            ),
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Создайте аккаунт!",
                          style: TextStyle(
                            color: Color(0xFF4E9752),
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Зарегистрируйтесь, чтобы начать.",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 30),
                        // Icon(Icons.account_box)
                        AppTextField(
                            controller: controllerLogin, labelText: "Логин"),
                        const SizedBox(height: 16),
                        AppTextField(
                            controller: controllerEmail, labelText: "Email"),
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
                        const SizedBox(height: 10),
                        AppButtonMax(
                          backgroundColor: const Color(0xFF4E9752),
                          onPressed: () {
                            if (formKey.currentState?.validate() != true) return;
                            if (controllerPassword.text !=
                                controllerRepeatPassword.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Пароли не совпадают")));
                            } else {
                              _onTapToSignUp(context.read<AuthCubit>());
                              Navigator.pushNamed(context, rootRoute);
                            }
                          },
                          text: "Регистрация",
                        ),
                        // const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 65,
                  decoration: const BoxDecoration(
                    color: Color(0xFFD8FFD8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Есть аккаунт?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, loginScreenRoute);
                        },
                        child: Text("Авторизоваться",
                            style: theme.textTheme.labelSmall),
                      ),
                    ],
                  ),
                ),
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
