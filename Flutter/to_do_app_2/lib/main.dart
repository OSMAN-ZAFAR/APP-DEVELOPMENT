
import 'package:flutter/material.dart';
import 'File1.dart';

void main()
{
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: File1() ,
    );
  }
}