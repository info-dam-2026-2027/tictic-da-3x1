import 'package:flutter/material.dart';

class MyPasswordInput extends StatefulWidget {
  const MyPasswordInput({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<MyPasswordInput> createState() => _MyPasswordInputState();
}

class _MyPasswordInputState extends State<MyPasswordInput> {
  bool textNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: textNotVisible,
        controller: widget.passwordController,
        decoration: InputDecoration(
          hintText: 'Ex: **********',
          labelText: 'Mot de passe *',
          labelStyle: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                textNotVisible = !textNotVisible;
              });
            },
            icon: Icon(
              textNotVisible ? Icons.visibility : Icons.visibility_off,
            ),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }
}