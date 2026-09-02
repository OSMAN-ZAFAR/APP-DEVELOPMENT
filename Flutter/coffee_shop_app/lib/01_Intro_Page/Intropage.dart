// ignore_for_file: sort_child_properties_last, unused_import

import 'package:coffee_shop_app/02_Home_Page/homepage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/coffee.png'),

              BoldText(
                text: " IT's Beyond Addiction....",
                color: const Color.fromARGB(255, 212, 211, 211),
                size: 25,
              ),

              SizedBox(height: 30),

              Padding(
                // Go To Homepage .......
                padding: EdgeInsetsGeometry.only(),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: LightText(
                        text: 'Get Started',
                        size: 17,
                        color: const Color.fromARGB(255, 241, 149, 10),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(125, 60, 111, 162),

                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: 150,
                    height: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
