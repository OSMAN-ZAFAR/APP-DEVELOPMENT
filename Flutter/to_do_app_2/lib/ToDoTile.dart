// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:to_do_app_2/MyText.dart';

class Todotile extends StatelessWidget {

   Todotile({
    super.key,
    required this.value,
    required this.onchanged ,
    required this.note
    });
    String note;
   bool value;
   void Function(bool?)? onchanged;
   
   

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(color:  Color.fromARGB(255, 93, 33, 33),
        borderRadius: BorderRadius.circular(30)),
        height: 45,
        width: 450,
      
      child: Row(
        children: [
          Checkbox(value: value, onChanged: onchanged,
          fillColor: WidgetStatePropertyAll(Colors.white),
          checkColor: Colors.black,
          overlayColor:  WidgetStatePropertyAll(Colors.amber),),
         

         Mytext(Tittle:note, check: value,)
         

            
          

          
        ],
      ),
      
      ),
    );
  }
}