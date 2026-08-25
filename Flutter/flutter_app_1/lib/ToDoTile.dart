// ignore_for_file: avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'MyText.dart';

class Todotile extends StatelessWidget {
  Todotile({
    super.key,
    required this.value,
    required this.onChanged,
    required this.text,
  });

  bool value;
  String text;

  void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              fillColor: WidgetStateProperty.all(const Color.fromARGB(255, 246, 246, 245)),
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
    );
  }
}
