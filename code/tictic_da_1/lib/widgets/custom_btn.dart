import 'package:flutter/material.dart';
import 'package:tictic_da_1/styles/color.dart';

import '../styles/text.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.label,
    required this.action,
    required this.isDark
  });

  final String label;
  final GestureTapCallback action;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        decoration: BoxDecoration(
          color: isDark ? kDarkGreenColor : kLightGreenColor,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Text(label, style: isDark ? kButtonTextDark : kButtonTextLight),
        ),
      ),
    );
  }
}