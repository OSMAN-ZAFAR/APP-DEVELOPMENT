// ignore_for_file: duplicate_import

import 'package:basic_crud_app/Views/homepage.dart';
import 'package:basic_crud_app/Views/loginpage.dart';
import 'package:basic_crud_app/Views/signuppage.dart';
import 'package:basic_crud_app/controllers/auth_controller.dart';
import 'package:basic_crud_app/routes/app_routes.dart';
import 'package:basic_crud_app/Views/homepage.dart';
import 'package:basic_crud_app/Views/loginpage.dart';
import 'package:basic_crud_app/Views/signuppage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Get.put(AuthController());

  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: AppRoutes.login,

      getPages: [
        GetPage(
          name: AppRoutes.login,
          page: () => const LoginView(),
        ),

        GetPage(
          name: AppRoutes.signup,
          page: () => const SignupView(),
        ),

        GetPage(
          name: AppRoutes.home,
          page: () => const HomeView(),
        ),
      ],
    );
  }
}