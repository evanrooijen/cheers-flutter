import 'package:cheers/login/bloc/login_bloc.dart';
import 'package:cheers/login/widgets/login_form.dart';
import 'package:cheers/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocListener<LoginBloc, LoginState>(
                listener: (context, state) => {
                  state.whenOrNull(
                    success: () =>
                        {context.goNamed(appRoutes[AppRoutes.home]!)},
                    failed: () => {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('Error: Login failed'),
                        ),
                      )
                    },
                  )
                },
                child: const LoginForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
