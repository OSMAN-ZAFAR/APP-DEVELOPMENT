// ignore_for_file: unused_local_variable, sized_box_for_whitespace, unused_import

import 'package:mvc_structure_app/Views/ProfilePage/profilepage.dart';
import 'package:mvc_structure_app/Controllers/user_controller.dart';
import 'package:mvc_structure_app/Routes/app_routes.dart';
import 'package:mvc_structure_app/widgets/LightText.dart';
import 'package:mvc_structure_app/widgets/boldtext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final UserController controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Center(child: Text("Homepage"))),
              
        // ............................. body ...........................


        body: SingleChildScrollView(

        // ............................. main container ...........................

          child: Container(
            height: 830,
            width: 450,
            decoration: BoxDecoration(color: Colors.amber),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: BoldText(
                    text: "User Information",
                    color: Colors.black,
                    size: 25,
                  ),
                ),

                SizedBox(height: 30),

                // ............................. user name ...........................
                Container(
                  height: 50,
                  width: 390,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(216, 15, 15, 16),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.amber,
                        ),
                      ),

                      SizedBox(width: 20),

                      Obx(
                        () => BoldText(
                          text: controller.user.value.name,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
                
                
                SizedBox(height: 30),
               
                // ............................. mail ..........................
                Container(
                  height: 50,
                  width: 390,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(216, 15, 15, 16),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.email_outlined,
                          size: 30,
                          color: Colors.amber,
                        ),
                      ),

                      SizedBox(width: 20),

                      Obx(
                        () => BoldText(
                          text: controller.user.value.email,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 90),

                // ............................. Buttons ..........................
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    children: [
                      // // ............................. update button ..........................
                      GestureDetector(
                        onTap: () {
                          final TextEditingController nameController =
                              TextEditingController(
                                text: controller.user.value.name,
                              );

                          final TextEditingController emailController =
                              TextEditingController(
                                text: controller.user.value.email,
                              );
                          Get.dialog(
                            AlertDialog(
                              title: Text("Update User"),

                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                      hintText: "Enter the name",
                                      labelText: "Name",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),

                                  TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      hintText: "Enter the Email",
                                      labelText: "Email",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),

                                  // ...................  ALeart dialouge  buttons.......................
                                  Row(
                                    children: [
                                      // ...................  ALeart dialouge update button.......................
                                      GestureDetector(
                                        onTap: () {
                                          controller.UserUpdate(
                                            nameController.text,
                                            emailController.text,
                                          );
                                          Get.back();
                                        },
                                        child: Container(
                                          height: 50,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusGeometry.circular(
                                                  15,
                                                ),
                                            color: Colors.black,
                                          ),
                                          child: Center(
                                            child: LightText(
                                              text: "Update",
                                              color: Colors.amber,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20),

                                      // ................... ALeart dialouge cancel button.......................
                                      GestureDetector(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Container(
                                          height: 50,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusGeometry.circular(
                                                  15,
                                                ),
                                            color: Colors.black,
                                          ),
                                          child: Center(
                                            child: LightText(
                                              text: "Cancel",
                                              color: Colors.amber,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },

                        // ...................  outsider update buttons.......................
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(216, 15, 15, 16),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Center(
                            child: LightText(
                              text: "Update",
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 40),

                      // // ............................. go to profile button ..........................
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.profile);                       
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(216, 15, 15, 16),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Center(
                            child: LightText(
                              text: "Go to Profile",
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
