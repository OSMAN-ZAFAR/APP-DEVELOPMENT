// ignore: unused_import, file_names
// ignore_for_file: sort_child_properties_last, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
   Mycontainer({super.key,
    required this.color,
    required this.height,
    required this.width,
    required this.radius,
    required this.child,
    });
 
  double height,width,radius;
  Color color;

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
          );
  }
}
