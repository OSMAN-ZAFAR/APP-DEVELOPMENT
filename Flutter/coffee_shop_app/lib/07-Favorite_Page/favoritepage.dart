// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/04_Details_View_Page/bottomHalfBeanPage.dart';
import 'package:coffee_shop_app/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/05_Cart_Page/cartpage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

class Favoritepage extends StatelessWidget {
  const Favoritepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //.................. Bottom Navigation ................................
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          backgroundColor: const Color.fromARGB(125, 60, 111, 162),

          items: [
            //............ Home
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Icon(
                  Icons.home_filled,
                  color: const Color.fromARGB(255, 212, 211, 211),
                  size: 28,
                ),
              ),
              label: '',
            ),
            //............ cart
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cartpage()),
                  );
                },
                child: Icon(
                  Icons.shopping_bag,
                  color: const Color.fromARGB(255, 212, 211, 211),
                  size: 28,
                ),
              ),
              label: '',
            ),

            //............ favorite
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Favoritepage()),
                  );
                },
                child: Icon(
                  Icons.favorite,
                  color: Color.fromARGB(230, 253, 168, 50),
                  size: 28,
                ),
              ),
              label: '',
            ),

            //............ Notification
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_important_rounded,
                color: const Color.fromARGB(255, 212, 211, 211),
                size: 28,
              ),
              label: '',
            ),
          ],
        ),

        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // .............. Back ARRow ..............
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(218, 60, 111, 162),

                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: const Color.fromARGB(255, 239, 183, 100),
                      ),
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
