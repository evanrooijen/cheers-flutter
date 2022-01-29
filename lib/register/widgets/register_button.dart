import 'package:cheers/register/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context.read<RegisterBloc>().add(
            const RegisterEvent.request('test@test.com', 't3vwZWeZK3Wz3tL9'));
      },
      child: const Text('Register'),
    );
  }
}
