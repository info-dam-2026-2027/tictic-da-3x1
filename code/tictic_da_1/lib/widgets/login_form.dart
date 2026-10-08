import 'package:flutter/material.dart';

import 'custom_btn.dart';
import 'my_password_input.dart';
import 'my_text_input.dart';

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
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            MyTextInput(
              controller: mailController,
              placeholder: 'Ex: johndoe@example.com',
              label: 'Adresse mail *',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
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