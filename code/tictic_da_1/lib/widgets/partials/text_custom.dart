import 'package:flutter/material.dart';
import 'package:tictic_da_1/styles/size.dart';
import 'package:tictic_da_1/styles/text.dart';

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
        padding: const EdgeInsets.all(kPaddingXS),
        child: Column(
          children: [
            Text(
              topText,
              style: kTextCustomTop,
            ),
            Text(
              bottomText,
              style: kTextCustomBottom,
            ),
          ],
        ),
      ),
    );
  }
}
