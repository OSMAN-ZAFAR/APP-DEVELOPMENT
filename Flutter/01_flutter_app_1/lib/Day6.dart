// ignore_for_file: strict_top_level_inference, prefer_final_fields, unused_field, sort_child_properties_last, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app_1/ToDoTile.dart';
import 'MyText.dart';

class Day6 extends StatefulWidget {
  const Day6({super.key});

  @override
  State<Day6> createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  TextEditingController _controller = TextEditingController();

  void onChanged(int index) {
    // check box function:

    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  onpressed() {
    // Add Function
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // Alert Dialouge
          content: Container(
            height: 250,
            width: 250,
            color: const Color.fromARGB(255, 251, 251, 252),
            child: Column(
              children: [
                SizedBox(height: 40),
                Padding(
                  // text-form-field
                  padding: EdgeInsetsGeometry.only(left: 17, right: 17),
                  child: TextFormField(
                    controller: _controller, // text-exiting-controller:
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
                  children: [
                    // BUttons:
                    Padding(
                      padding: EdgeInsetsGeometry.only(left: 15),

                      child: GestureDetector(
                        // Add Button:
                        onTap: () {
                          setState(() {
                            Notes.add([_controller.text.toString(),false]);
                            _controller.clear();
                            Navigator.pop(context);
                          });
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

                    GestureDetector(
                      // Cancel Button:
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
      },
    );
  }

  List Notes = [
    ["Hey osman", false],
    ["Bey osman", true],
    ["welcome osman", false],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            onpressed();
          },
          backgroundColor: const Color.fromARGB(255, 35, 61, 73),
          child: const Icon(Icons.add, color: Colors.amber),
        ),

        appBar: AppBar(
          // APP Bar
          backgroundColor: const Color.fromARGB(255, 35, 61, 73),
          title: Center(
            child: Text('To-Do-App', style: TextStyle(color: Colors.white)),
          ),
        ),

        body: ListView.builder(
          itemCount: Notes.length,
          itemBuilder: (context, index) {
            return Todotile(
              value: Notes[index][1],
              onChanged: (p0) {
                onChanged(index);
              },
              text: Notes[index][0],
            );
          },
        ),
      ),
    );
  }
}
