import 'package:cheers/auth/bloc/auth_bloc.dart';
import 'package:cheers/login/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.when(
                  authenticated: (_) => const SizedBox(),
                  unauthenticated: () => const LoginButton(),
                  initial: () => const LoginButton(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
