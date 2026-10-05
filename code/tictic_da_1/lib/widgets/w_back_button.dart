import 'package:flutter/material.dart';

import '../styles/color.dart';

class WBackButton extends StatelessWidget {
  const WBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(32),
                border: Border.all(width: 1, color: kDarkGreenColor)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
    );
  }
}