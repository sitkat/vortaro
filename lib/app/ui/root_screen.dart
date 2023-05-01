import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/feature/auth/ui/components/auth_builder.dart';
import 'package:vortaro/feature/auth/ui/login_screen.dart';
import 'package:vortaro/feature/main/ui/main_screen_authorized.dart';
import 'package:vortaro/feature/main/ui/main_screen_not_authorized.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
      isNotAuthorized: (context) => LoginScreen(),
      isAuthorized: (context, value, child) =>
          MainScreenAuthorized(userEntity: value),
      isWaiting: (context) => const AppLoader(),
    );
  }
}
