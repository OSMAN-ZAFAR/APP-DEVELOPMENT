// ignore_for_file: sized_box_for_whitespace, unused_import

import 'package:fruit_shop_app/Views/loginview.dart';
import 'package:fruit_shop_app/widgets/iconWithText.dart';
import 'package:fruit_shop_app/widgets/MyContainer.dart';
import 'package:fruit_shop_app/widgets/LightText.dart';
import 'package:fruit_shop_app/widgets/BoldText.dart';
import 'package:fruit_shop_app/widgets/MyForm.dart';
import 'package:flutter/material.dart';

class Signupview extends StatefulWidget {
  const Signupview({super.key});

  @override
  State<Signupview> createState() => SignupviewState();
}

class SignupviewState extends State<Signupview> {
  bool tracker = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ..................... top image .................................
            Image.asset("assets/images/shape8.png"),
            // SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  // ..................... welcome text .................................
                  BoldText(text: "Welcome !", size: 25),
                  SizedBox(height: 10),

                  // ..................... User Name field .................................
                  Myform(title: "User name", icon: Icons.person,),
                  SizedBox(height: 10),

                  // ..................... password text-form-field .................................
                  Myform(title: "Password", icon: Icons.lock_outline),
                  SizedBox(height: 10),

                  // ..................... Email field .................................
                  Myform(title: "Email", icon: Icons.mail_outline,),
                  SizedBox(height: 10),

                  // ..................... Phone field .................................
                  Myform(title: "Phone", icon: Icons.phone,),
                  SizedBox(height: 10),

                  // ......................... Signup Button ................................
                  Mycontainer(
                    color: Colors.yellow.shade700,
                    height: 70,
                    width: 400,
                    radius: 15,
                    child: Center(child: BoldText(text: "Create")),
                  ),
                  SizedBox(height: 10),

                  // ......................... signup row ................................
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        LightText(text: "Already have an account?", size: 15),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginview()));
                          },
                          child: BoldText(
                            text: "Login",
                            color: Colors.yellow.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),


            
                  // ......................... Last image ................................
            SizedBox(height: 75,),
            Image.asset("assets/images/shape9.png"),
          ],
        ),
      ),
    );
  }
}
