// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables, unused_import, duplicate_import




import 'package:flutter/material.dart';

class Onpressed extends StatelessWidget {
   Onpressed({super.key , required this.controllerx, required this.onAdd });

  VoidCallback onAdd;

   TextEditingController controllerx ;

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
          // Alert Dialouge
          content: Container(
            height: 250,
            width: 250,
            color: const Color.fromARGB(255, 251, 251, 252),
            child: Column(    
              children: [
                SizedBox(height: 40),
                Padding(  // text-form-field
               
                  padding: EdgeInsetsGeometry.only(left: 17, right: 17),
                  child: TextFormField(
                    controller: controllerx, // text-exiting-controller:
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      hintText: 'Enter the Task:',
                    ),
                  ),
                ), //  TextForm Field

                SizedBox(height: 70),

                Row(
                  children: [   // BUttons:
                   
                    Padding(
                      padding: EdgeInsetsGeometry.only(left: 15),

                      child: GestureDetector(   // Add Button:
                       
                        onTap: () {

                          onAdd();
                        
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 35, 61, 73),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 50,
                          width: 100,

                          child: Center(
                            child: Text(
                              'Add',
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 30),

                    GestureDetector(    // Cancel Button:
                     
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 35, 61, 73),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 100,

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