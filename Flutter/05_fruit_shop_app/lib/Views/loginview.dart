// ignore_for_file: sized_box_for_whitespace, unused_import

import 'package:fruit_shop_app/Views/signupview.dart';
import 'package:fruit_shop_app/widgets/BoldText.dart';
import 'package:fruit_shop_app/widgets/LightText.dart';
import 'package:fruit_shop_app/widgets/MyContainer.dart';
import 'package:fruit_shop_app/widgets/MyForm.dart';
import 'package:fruit_shop_app/widgets/iconWithText.dart';
import 'package:flutter/material.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  bool tracker = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ..................... top image .................................
            Image.asset("assets/images/shape7.png"),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  // ..................... welcome text .................................
                  BoldText(text: "Welcome Back !", size: 25),
                  SizedBox(height: 30),

                  // ..................... email text-form-field .................................
                  Myform(title: "Email", icon: Icons.mail_outline),
                  SizedBox(height: 20),

                  // ..................... password text-form-field .................................
                  Myform(title: "Password", icon: Icons.lock_outline),
                  SizedBox(height: 20),

                  // ..................... Remember me Row .................................
                  Row(
                    children: [
                      // check box  .......
                      Checkbox(
                        side: BorderSide(color: Colors.orangeAccent),
                        checkColor: Colors.white,
                        activeColor: Colors.orangeAccent,
                        value: tracker,
                        onChanged: (value) {
                          setState(() {
                            tracker = !tracker;
                          });
                        },
                      ),

                      SizedBox(width: 10),

                      BoldText(
                        text: "Remember Me",
                        size: 15,
                        color: Colors.yellow.shade700,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // ......................... Login Button ................................
                  Mycontainer(
                    color: Colors.yellow.shade700,
                    height: 70,
                    width: 400,
                    radius: 15,
                    child: Center(child: BoldText(text: "Login")),
                  ),
                  SizedBox(height: 20),

                  // ......................... signup row ................................
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        LightText(text: "Don't have an account?", size: 15),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Signupview() ));
                          },
                          child: BoldText(
                            text: "Sign Up",
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
            Image.asset("assets/images/shape6.png"),
          ],
        ),
      ),
    );
  }
}
