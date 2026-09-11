// ignore_for_file: strict_top_level_inference, prefer_final_fields, unused_field, sort_child_properties_last, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app_1/ToDoTile.dart';
import 'package:flutter_app_1/onPressed.dart';
import 'MyText.dart';

class Day7 extends StatefulWidget {
  const Day7({super.key});

  @override
  State<Day7> createState() => _Day7State();
}

class _Day7State extends State<Day7> {
  TextEditingController _controller = TextEditingController();

  void onChanged(int index) {
    // check box function:

    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  

  List Notes = [
    ["Hey osman", false],
    ["Bey osman", true],
    ["welcome osman", false],
  ];

   onAdd()
   {
    setState(() {
      Notes.add([_controller.text.toString(),false]);
    });
   }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(context: context, builder:(context) {
              return Onpressed(controllerx: _controller,onAdd: () {
                onAdd();
                Navigator.pop(context);
                _controller.clear();
                
              },);
            },);
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
