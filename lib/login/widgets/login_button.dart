import 'package:cheers/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context
            .read<LoginBloc>()
            .add(const LoginEvent.request('test@test.com', 't3vwZWeZK3Wz3tL9'));
      },
      child: const Text('Login'),
    );
  }
}
