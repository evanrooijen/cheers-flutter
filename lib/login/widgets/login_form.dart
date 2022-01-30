import 'package:cheers/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            keyboardType: TextInputType.emailAddress,
            enableSuggestions: true,
            autocorrect: false,
            decoration: const InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'Email',
            ),
            name: 'email',
            validator: FormBuilderValidators.compose(
              [
                FormBuilderValidators.required(context),
                FormBuilderValidators.email(context),
              ],
            ),
          ),
          const SizedBox(height: 16),
          FormBuilderTextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              icon: const Icon(Icons.password),
              labelText: AppLocalizations.of(context)!.password,
            ),
            name: 'password',
            validator: FormBuilderValidators.compose(
              [
                FormBuilderValidators.required(context),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  child: const Text('Submit'),
                  onPressed: () =>
                      {_submitLoginForm(_formKey.currentState, context)},
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void _submitLoginForm(FormBuilderState? formState, BuildContext context) {
    if (formState?.saveAndValidate() ?? false) {
      debugPrint(formState?.value.toString());
      context.read<LoginBloc>().add(LoginEvent.request(
          formState?.value['email'], formState?.value['password']));
    }
  }
}
