// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  int counter = 0;

  void Increament() {
    setState(() {
      counter++;
    });
  }

  void Decreament() {
    setState(() {
      counter--;
    });
  }

  //-----------------------------App-Bar-Learning--------------------------------------

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 50, 70),
          title: Center(
            child: Text(
              'Counter App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 243, 192, 38),
              ),
            ),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'you have hit this Button ! ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: 25,
            ), // size-box is used to provide the height and width b/w elements.

            Text("$counter Times", style: TextStyle(fontSize: 30)),

            SizedBox(height: 25),

            //-----------------------------Elevated-Button-Learning--------------------------------------
            ElevatedButton(
              onPressed: () {
                Increament(); // area where we tell what should be happened after clicking the button,
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 2, 50, 70),
              ),
              child: Text(
                'Increament',
                style: TextStyle(
                  color: const Color.fromARGB(255, 243, 192, 38),
                  fontSize: 18,
                  //
                ),
              ),
            ),

            SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                Decreament();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 2, 50, 70),
              ),
              child: Text(
                'Decreament ',
                style: TextStyle(
                  color: const Color.fromARGB(255, 243, 192, 38),
                  fontSize: 18,
                  //
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
