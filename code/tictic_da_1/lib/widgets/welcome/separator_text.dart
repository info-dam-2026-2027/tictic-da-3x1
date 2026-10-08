import 'package:flutter/material.dart';

import '../../styles/color.dart';
import '../../styles/size.dart';

class SeparatorText extends StatelessWidget {
  final String text;
  final Color color;
  final double thickness;

  const SeparatorText({
    super.key,
    this.text = 'Ou',
    this.color = kDarkGreenColor,
    this.thickness = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kPaddingXL,
        vertical: kPaddingL,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(height: thickness, color: color),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: kBaseFontSize,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ),

          Expanded(
            child: Container(height: thickness, color: color),
          ),
        ],
      ),
    );
  }
}
