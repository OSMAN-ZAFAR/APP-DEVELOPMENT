// ignore_for_file: must_be_immutable, dead_code, unused_import

import 'package:flutter/material.dart';
import 'iconWithText.dart';

class Myform extends StatelessWidget {
   Myform({super.key,required this.title,required this.icon});

  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: IconWithText(
          icon: icon,
          sizeIcon: 25,

          text: title,
          sizeText: 15,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    SizedBox(height: 30);
  }
}
