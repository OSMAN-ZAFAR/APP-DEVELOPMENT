// ignore_for_file: unused_import

import 'package:mvc_structure_app/Routes/app_routes.dart';
import 'package:mvc_structure_app/Views/Homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',

      getPages: AppRoutes.routes,


    );
  }
}