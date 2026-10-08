import 'package:flutter/material.dart';
import 'package:tictic_da_1/styles/size.dart';

import '../../styles/color.dart';

class WBackButton extends StatelessWidget {
  const WBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(kBorderRadiusCircularMax),
                border: Border.all(width: kBorderBackButton, color: kDarkGreenColor)
            ),
            child: Padding(
              padding: const EdgeInsets.all(kPaddingXS),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
    );
  }
}