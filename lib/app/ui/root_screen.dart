import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/feature/auth/ui/components/auth_builder.dart';
import 'package:vortaro/feature/auth/ui/login_screen.dart';
import 'package:vortaro/feature/main/ui/main_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
      isNotAuthorized: (context) => LoginScreen(),
      isAuthorized: (context, value, child) => MainScreen(userEntity: value),
      isWaiting: (context) => const AppLoader(),
    );
  }
}
