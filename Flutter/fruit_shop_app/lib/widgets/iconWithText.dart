// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_shop_app/widgets/BoldText.dart';

class IconWithText extends StatelessWidget {
  IconWithText(
      {super.key,
      this.colorText = Colors.black,
      required this.icon,
      this.colorIcon = Colors.black,
      this.sizeIcon = 10,
      this.sizeText = 10,
      required this.text});

  final String text;
  final IconData icon;
  final Color? colorText;
  final Color? colorIcon;
  final double sizeText;
  final double sizeIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: colorIcon,
          size: sizeIcon,
        ),
        SizedBox(width: 5), // Spacing between icon and text
        Opacity(
          opacity: 0.3,
          child: BoldText(
            text: text,
            color: colorText,
            size: sizeText,
          ),
        ),
      ],
    );
  }
}