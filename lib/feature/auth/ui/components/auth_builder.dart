import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/domain/error_entity/error_entity.dart';

import '../../domain/auth_state/auth_cubit.dart';

class AuthBuilder extends StatelessWidget {
  const AuthBuilder({
    Key? key,
    required this.isNotAuthorized,
    required this.isAuthorized,
    required this.isWaiting,
  }) : super(key: key);

  final WidgetBuilder isNotAuthorized;
  final ValueWidgetBuilder isAuthorized;
  final WidgetBuilder isWaiting;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.when(
          notAuthrized: () => isNotAuthorized(context),
          authrized: (userEntity) => isAuthorized(context, userEntity, this),
          waiting: () => isWaiting(context),
          error: (error) => isNotAuthorized(context),
        );
      },
      listenWhen: ((previous, current) =>
          previous.mapOrNull(
            error: (value) => value,
          ) !=
          current.mapOrNull(
            error: (value) => value,
          )),
      listener: (context, state) {
        state.whenOrNull(
          error: (error) =>
              _showSnackBar(context, ErrorEntity.fromException(error)),
        );
      },
    );

  }

  void _showSnackBar(BuildContext context, ErrorEntity error) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 5),
        content: SingleChildScrollView(
          child: Text(
            "Error: ${error.errorMessage}, Message: ${error.message}",
            maxLines: 5,
          ),
        )));
  }
}
