import 'package:cheers/register/bloc/register_bloc.dart';
import 'package:cheers/register/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        foregroundColor: Colors.grey.shade800,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocListener<RegisterBloc, RegisterState>(
                child: const RegisterForm(),
                listener: (context, state) => {
                  state.whenOrNull(
                    failed: () => {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('Error: Registration failed'),
                        ),
                      )
                    },
                  )
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
