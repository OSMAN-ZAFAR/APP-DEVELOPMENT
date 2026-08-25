// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app_1/ToDoTile.dart';
import 'MyText.dart';

class Day5 extends StatefulWidget {
  const Day5({super.key});

  @override
  State<Day5> createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  // bool isTracker = false;

  // void onChanged() {
  //   setState(() {
  //     if (isTracker == false) {
  //       isTracker = true;
  //     } else {
  //       isTracker = false;
  //     }
  //   });
  // }



void onChanged(int index) {
  setState(() {
  Notes[index][1]=  !Notes[index][1];
    
  });
 
}

  List Notes=[
    ["Hey osman",false],
    ["Bey osman",true],
    ["welcome osman",false],
  ];




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // APP Bar
          backgroundColor: const Color.fromARGB(255, 35, 61, 73),
          title: Center(
            child: Text('To-Do-App', style: TextStyle(color: Colors.white)),
          ),
        ),

        body: ListView.builder(itemCount: Notes.length,itemBuilder: (context, index){
          return Todotile(value: Notes[index][1], onChanged:(p0) {
            onChanged(index);
          }, text: Notes[index][0]);
        })
      ),
    );
  }
}
