import 'package:flutter/material.dart';
import 'package:tictic_da_1/styles/size.dart';
import 'package:tictic_da_1/validators/validators.dart';

import '../partials/custom_btn.dart';
import '../partials/my_password_input.dart';
import '../partials/my_text_input.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
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
              controller: firstnameController,
              placeholder: 'Ex: John',
              label: 'Prénom *',
              validation: Validators.required,
            ),
            SizedBox(height: kSpacer),
            MyTextInput(
              controller: lastnameController,
              placeholder: 'Ex: Doe',
              label: 'Nom de famille *',
              validation: Validators.required,
            ),
            SizedBox(height: kSpacer),
            MyTextInput(
              controller: mailController,
              placeholder: 'Ex: johndoe@example.com',
              label: 'Adresse mail *',
              validation: Validators.email,
            ),
            SizedBox(height: kSpacer),
            MyPasswordInput(passwordController: passwordController),
            SizedBox(height: kSpacer),
            CustomBtn(
              label: 'Créer mon compte',
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
