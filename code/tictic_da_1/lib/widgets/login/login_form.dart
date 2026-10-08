import 'package:flutter/material.dart';
import 'package:tictic_da_1/styles/size.dart';

import '../../validators/validators.dart';
import '../partials/custom_btn.dart';
import '../partials/my_password_input.dart';
import '../partials/my_text_input.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            MyTextInput(
              controller: mailController,
              placeholder: 'Ex: johndoe@example.com',
              label: 'Adresse mail *',
              validation: Validators.email,
            ),
            SizedBox(height: kSpacer),
            MyPasswordInput(passwordController: passwordController),
            CustomBtn(
              label: 'Se connecter',
              action: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/home');
                }
              },
              isDark: true,
            ),
          ],
        ),
      ),
    );
  }
}