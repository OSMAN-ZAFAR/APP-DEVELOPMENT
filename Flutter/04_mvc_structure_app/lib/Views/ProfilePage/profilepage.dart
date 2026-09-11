// ignore_for_file: avoid_print, unused_import

import 'package:mvc_structure_app/Controllers/user_controller.dart';
import 'package:mvc_structure_app/Services/user_service.dart';
import 'package:mvc_structure_app/widgets/LightText.dart';
import 'package:mvc_structure_app/widgets/boldtext.dart';
import 'package:mvc_structure_app/Models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profilepage extends StatelessWidget {
   Profilepage({super.key});

    final UserController controller=Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: BoldText(text: "", size: 25, color: Colors.black),
          ),
        ),

        body: Container(
          height: 830,
          width: 450,
          decoration: BoxDecoration(color: Colors.amber),

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: IconButton(
                  onPressed: () {
                    print("Button is working");
                  },
                  icon: Icon(
                    Icons.account_circle,
                    size: 230,
                    color: Colors.black,
                  ),
                ),
              ),

              SizedBox(height: 20),

              BoldText(text: controller.user.value.name),

              SizedBox(height: 20),

              LightText(text: controller.user.value.email)
            ],
          ),
        ),
      ),
    );
  }
}
