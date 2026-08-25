// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app_1/ToDoTile.dart';
import 'MyText.dart';

class Day4 extends StatefulWidget {
  const Day4({super.key});

  @override
  State<Day4> createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  bool isTracker = false;


  void onChanged() {
    setState(() {
      if (isTracker == false) {
        isTracker = true;
      } else {
        isTracker = false;
      }
    });
  }

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


// -----------------------How we can select which widget is required in the Body: ---------------


// Requirement	                    Widget
//------------->                    -------->

// Vertical	                        Column

// Horizontal	                      Row

// Overlapping	                    Stack

// Scrollable list	                ListView

// Scrollable grid	                GridView

// Center something	                Center

// Position precisely	              Align

// Add space around something	      Padding

// Flexible space	                  Expanded / Flexible


        body: Column(
          children: [
            Todotile(
              text: ' Complete the task Day 7 ',
              value: isTracker,
              onChanged: (x) {
                onChanged();
              },
            ),

            Todotile(
              text: ' Complete the pf assignment  ',
              value: isTracker,
              onChanged: (x) {
                onChanged();
              },
            ),
          ],
        ),
      ),
    );
  }
}
