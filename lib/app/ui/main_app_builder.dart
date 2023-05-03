import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/di/init_di.dart';
import 'package:vortaro/app/domain/app_builder.dart';
import 'package:vortaro/app/ui/components/app_router/app_router_constants.dart';
import 'package:vortaro/app/ui/components/app_theme/app_theme.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

import 'package:vortaro/app/ui/components/app_router/app_router.dart';

import '../../feature/auth/domain/auth_state/auth_cubit.dart';

class MainAppBuilder implements AppBuilder {
  final AppRouter router = AppRouter();

  @override
  Widget buildApp() {
    return _GlobalProvider(
      child: MaterialApp(
        theme: lightTheme,
        onGenerateRoute: router.generatedRoute,
        initialRoute: rootRoute,
      ),
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
            WordCubit(locator.get<WordRepository>(), locator.get<AuthCubit>())
              ..fetchWords(),
      )
    ], child: child);
  }
}
