import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({
    super.key,
    required this.controller,
    required this.placeholder,
    required this.label,
    required this.validator,
  });

  final TextEditingController controller;
  final String placeholder;
  final String label;
  final FormFieldValidator<String> validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: placeholder,
          labelText: label,
          labelStyle: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        ),
        validator: validator,
      ),
    );
  }
}