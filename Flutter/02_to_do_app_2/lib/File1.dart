// ignore_for_file: dead_code, void_checks, prefer_final_fields, unused_field, sized_box_for_whitespace, strict_top_level_inference, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'ToDoTile.dart';
import 'MyText.dart';
import 'onpressed.dart';

class File1 extends StatefulWidget {
  const File1({super.key});

  @override
  State<File1> createState() => _File1State();
}

class _File1State extends State<File1> {

    TextEditingController _controller=TextEditingController();


  List Notes = [
    ['I will complete the Day7 Task of my Internship.', false],
    
  ];


  void onchanged(int index) {  // check box function.......
    
    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  onAdd()  // Add Function.....
  {
    setState(() {
      Notes.add([_controller.text.toString(),false]);
    });

  }
  
  onDelete(int index)  // delete function
  {
    setState(() {
    Notes.removeAt(index);
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(context: context, builder:(context) {
              return onpressed(controllerx: _controller, onAdd:() {
                return onAdd();
              
              },);
            },);
            
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
            return Todotile(    //To-Do-Tile......
              onDelete: () {
                onDelete(index);
              },
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
