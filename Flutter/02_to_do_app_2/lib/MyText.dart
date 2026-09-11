// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  Mytext({
    super.key,
    required this.Tittle,
     this.color=Colors.amber,
    this.size=15,
    required this.check
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

    ),);
  }
}
