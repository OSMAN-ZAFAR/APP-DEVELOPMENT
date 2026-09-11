// ignore_for_file: avoid_print, sized_box_for_whitespace, must_be_immutable, prefer_const_constructors_in_immutables, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do_app_2/MyText.dart';

class Todotile extends StatelessWidget {

   Todotile({
    super.key,
    required this. onDelete,
    required this.value,
    required this.onchanged ,
    required this.note
    });
    String note;
   bool value;
   void Function(bool?)? onchanged;
   VoidCallback onDelete;   
 

  

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(),
         children:[
        Expanded(
          child: GestureDetector(
            onTap: () {
              
              onDelete();
            },
            child: Container(   // Delete Container.......
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:  Color.fromARGB(255, 93, 33, 33),
                
               ),
               margin: EdgeInsets.only(left: 30,right: 20),
              height: 70,
              width: 170,
              child: Icon(Icons.delete,color: Colors.amber,size: 30,),
            
             ),
          ),
        ) ]  
        ),
        
        child: Container(    // TO-Do-Tile........
          decoration: BoxDecoration(color:  Color.fromARGB(255, 93, 33, 33),
          borderRadius: BorderRadius.circular(30)),
          height: 45,
          width: 450,
        
        child: Row(
          children: [
            Checkbox(value: value, onChanged: onchanged,   // checkBox
            fillColor: WidgetStatePropertyAll(Colors.white),
            checkColor: Colors.black,
            overlayColor:  WidgetStatePropertyAll(Colors.amber),),
           
        
           Mytext(Tittle:note, check: value,)
           
        
              
            
        
            
          ],
        ),
        
        ),
      ),
    );
  }
}