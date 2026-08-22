

import 'Day3.dart';
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
        home: Day3(),
        debugShowCheckedModeBanner: true,
    );
  }
}



