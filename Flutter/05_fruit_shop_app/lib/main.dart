// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:fruit_shop_app/Views/loginview.dart';

void main(){
  runApp(MyAPP());
}


class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginview(),
      debugShowCheckedModeBanner: false,
    );
  }
}