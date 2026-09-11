// ignore_for_file: must_be_immutable, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  Mytext({
    super.key,
    required this.Tittle,
    this.color = Colors.black,
    this.size = 10,
    required this.check,
  });

  String Tittle;
  double? size;
  Color? color;
  bool check;
  @override
  Widget build(BuildContext context) {
    return Text(
      Tittle,
      style: TextStyle(
        fontSize: size,
        color: color,
        decoration: check ? TextDecoration.lineThrough  : TextDecoration.none  ,
      ),
    );
  }
}
