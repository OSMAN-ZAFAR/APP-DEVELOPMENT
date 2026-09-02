import 'package:flutter/material.dart';

class Day10 extends StatelessWidget {
  const Day10({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 52, 92),
          
          title: Center(
            child: Text('Drawer', style: TextStyle(color: Colors.amber)),
          ),
        ),
        drawer: Drawer(backgroundColor: const Color.fromARGB(255, 2, 52, 92),),

        body: Column(children: [  
          
         
        ],

        
       ),
      ),
    );
  }
}
