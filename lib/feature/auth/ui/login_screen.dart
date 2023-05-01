import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/ui/components/app_button_max.dart';
import 'package:vortaro/app/ui/components/app_router/app_router_constants.dart';
import 'package:vortaro/app/ui/components/app_text_field.dart';

import '../domain/auth_state/auth_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
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
                        "С возвращением!",
                        style: TextStyle(
                          color: Color(0xFF4E9752),
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Веддите свои учетные данные, чтобы продолжить.",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 40),
                      // Icon(Icons.account_box)
                      AppTextField(
                        controller: controllerLogin,
                        labelText: "Логин",
                      ),
                      const SizedBox(height: 16),
                      AppTextField(
                        controller: controllerPassword,
                        labelText: "Пароль",
                        obscureText: true,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Забыли пароль?",
                          style: theme.textTheme.labelSmall,
                        ),
                      ),
                      AppButtonMax(
                        onPressed: () {
                          if (formKey.currentState?.validate() == true) {
                            _onTapToSignIn(context.read<AuthCubit>());
                          }
                        },
                        text: "Войти",
                        backgroundColor: const Color(0xFF4E9752),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFFD8FFD8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Ещё нет учетной записи?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, registerScreenRoute);
                      },
                      child: Text("Зарегистрироваться",
                          style: theme.textTheme.labelSmall),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapToSignIn(AuthCubit authCubit) => authCubit.signIn(
      username: controllerLogin.text, password: controllerPassword.text);
}
