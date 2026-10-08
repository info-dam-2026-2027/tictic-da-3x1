import 'package:flutter/material.dart';
import 'package:tictic_da_1/styles/size.dart';

import '../../styles/color.dart';
import '../../styles/text.dart';
import '../../validators/validators.dart';

class MyPasswordInput extends StatefulWidget {
  const MyPasswordInput({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<MyPasswordInput> createState() => _MyPasswordInputState();
}

class _MyPasswordInputState extends State<MyPasswordInput> {
  bool passwordNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      obscureText: passwordNotVisible,
      decoration: InputDecoration(
          labelText: 'Mot de passe *',
          labelStyle: kTextInputLabel,
          hintText: 'Ex: ***********',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(kBorderRadiusInput)),
          //icon: IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
          //prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordNotVisible = !passwordNotVisible;
              });
            },
            icon: Icon(
              passwordNotVisible ? Icons.visibility : Icons.visibility_off,
            ),
          ),
          filled: true,
          fillColor: kWhiteColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusInput),
            borderSide: const BorderSide(
              color: kGrey,
              width: kBorderInputWidth,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusInput),
            borderSide: const BorderSide(
              color: kDarkGreenColor,
              width: kBorderInputWidth,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusInput),
            borderSide: const BorderSide(
              color: kRed,
              width: kBorderInputWidth,
            ),
          )
      ),
      validator: Validators.password,
    );
  }
}