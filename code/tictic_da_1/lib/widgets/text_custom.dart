import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  const TextCustom({
    super.key,
    required this.topText,
    required this.bottomText,
    required this.action,
  });

  final GestureTapCallback action;
  final String topText;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              topText,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              bottomText,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
