

// ignore_for_file: unused_import, duplicate_import

import 'package:flutter_app_1/Day5.dart';

import 'Day7.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Day7(),
        debugShowCheckedModeBanner: true,
    );
  }
}



