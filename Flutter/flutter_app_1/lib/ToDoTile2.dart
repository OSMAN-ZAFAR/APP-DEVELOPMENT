// ignore_for_file: avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'MyText.dart';

class Todotile2 extends StatelessWidget {
  Todotile2({
    
    super.key,
    required this.onDelete,
    required this.value,
    required this.onChanged,
    required this.text,
  });

VoidCallback onDelete;
  bool value;
  String text;

  void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: StretchMotion(),
        children: [


          Expanded(  // delete container
            child: GestureDetector(
              onTap: () {
                onDelete();
                
              },
              child: Container(
               
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 49, 98, 126),
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.only(right: 40),
                height: 70,
                width: 170,
                child: Icon(Icons.delete, color: Colors.amber, size: 35),
              ),
            ),
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsetsGeometry.only(
          right: 50,
          left: 20,
          top: 20,
          bottom: 20,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 49, 98, 126),
            borderRadius: BorderRadius.circular(30),
          ),
          height: 78,
          width: 425,

          child: Row(
            children: [
              Checkbox(
                value: value,
                onChanged: onChanged,
                checkColor: Colors.black,
                fillColor: WidgetStateProperty.all(
                  const Color.fromARGB(255, 246, 246, 245),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 10),
                child: Mytext(
                  Tittle: text,
                  size: 15,
                  color: Colors.amber,
                  check: value,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
