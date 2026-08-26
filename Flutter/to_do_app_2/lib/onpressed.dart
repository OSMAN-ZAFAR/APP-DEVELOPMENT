// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

class onpressed extends StatelessWidget {
  onpressed({super.key, required this.controllerx, required this.onAdd});

  VoidCallback onAdd;
  TextEditingController controllerx;

  @override
  Widget build(BuildContext context) {



    return AlertDialog(
      // Alert Dialouge Box.....
      content: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 242, 240, 240),
        ),
        height: 200,
        width: 200,


        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(top: 50),
              
              child: TextFormField(
                // text-exiting-controller:
                controller: controllerx,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  hintText: 'Enter the Task:',
                ),
              ),
            ),

            SizedBox(height: 40),

            Row(
              children: [
                GestureDetector(
                  // Add Button:----
                  onTap: () {
                    onAdd();
                    Navigator.pop(context);
                    controllerx.clear();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 86, 24, 19),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 40,
                    width: 90,
                    child: Center(
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.amber, fontSize: 20),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 30),

                GestureDetector(
                  // Cancel Button:----
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 86, 24, 19),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 40,
                    width: 90,
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.amber, fontSize: 20),
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
  }
}
