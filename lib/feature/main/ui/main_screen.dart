import 'package:flutter/material.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.userEntity}) : super(key: key);

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MainScreen"),
      ),
      body: Center(
        child: Text(userEntity.username),
      ),
    );
  }
}
