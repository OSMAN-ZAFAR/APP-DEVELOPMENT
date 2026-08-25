// ignore_for_file: prefer_final_fields, unused_field, sized_box_for_whitespace, strict_top_level_inference, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'ToDoTile.dart';
import 'MyText.dart';

class File1 extends StatefulWidget {
  const File1({super.key});

  @override
  State<File1> createState() => _File1State();
}

class _File1State extends State<File1> {

    TextEditingController _controller=TextEditingController();


  void onchanged(int index) {
    // check box function.......
    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  onpressed() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(   // Alert Dialouge Box.....
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
                    controller: _controller, // text-exiting-controller:
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
                      onTap: () {
                          setState(() {
                            Notes.add([_controller.text.toString(),false]);
                            _controller.clear();
                            Navigator.pop(context);
                          });
                        },
                      child: Container(    // Add Button:----
                       
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

                    GestureDetector(    // Cancel Button:----
                    
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
      },
    );
  }

  List Notes = [
    ['I will complete the Day7 Task of my Internship.', false],
    ['I will also complete my tafseer of surh khaf.', false],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            onpressed();
          },
          backgroundColor: const Color.fromARGB(255, 86, 24, 19),
          child: Icon(Icons.add, color: Colors.amber),
        ),
        appBar: AppBar(
          title: Center(
            child: Text(
              'To-Do-List',
              style: TextStyle(
                color: const Color.fromARGB(255, 250, 213, 104),
                fontSize: 25,
              ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 86, 24, 19),
        ),

        body: ListView.builder(
          itemCount: Notes.length,
          itemBuilder: (context, index) {
            return Todotile(
              value: Notes[index][1],
              onchanged: (p0) {
                onchanged(index);
              },
              note: Notes[index][0],
            );
          },
        ),
      ),
    );
  }
}
