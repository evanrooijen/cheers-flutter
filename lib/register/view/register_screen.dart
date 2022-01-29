import 'package:cheers/register/bloc/register_bloc.dart';
import 'package:cheers/register/widgets/register_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<RegisterBloc, RegisterState>(
              listener: (context, state) => {
                state.whenOrNull(
                    failed: () => {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text('Error: Registration failed'),
                          ))
                        })
              },
              builder: (context, state) {
                return state.when(
                  loading: () => const CircularProgressIndicator(),
                  success: () => const SizedBox(),
                  failed: () => const RegisterButton(),
                  initial: () => const RegisterButton(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
