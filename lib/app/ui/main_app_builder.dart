import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/di/init_di.dart';
import 'package:vortaro/app/domain/app_builder.dart';
import 'package:vortaro/app/ui/root_screen.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

import '../../feature/auth/domain/auth_state/auth_cubit.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    return const _GlobalProvider(
      child: MaterialApp(home: RootScreen()),
    );
  }
}

class _GlobalProvider extends StatelessWidget {
  const _GlobalProvider({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => locator.get<AuthCubit>(),
      ),
      BlocProvider(
        create: (context) =>
            WordCubit(locator.get<WordRepository>())..fetchWords(),
      )
    ], child: child);
  }
}
