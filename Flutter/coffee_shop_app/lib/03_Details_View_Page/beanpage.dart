// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/03_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/03_Details_View_Page/bottomHalfBeanPage.dart';
import 'package:coffee_shop_app/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

class Beanpage extends StatelessWidget {
  const Beanpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // ..............Main Container..................
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // .............. Bean  Image ..............
                    image: DecorationImage(
                      image: AssetImage('assets/beans.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 550,
                  width: 450,

                  // .............. Top Row ................
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 420, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // .............. Back ARRow ..............
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              ),
                            );
                          },
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

                        // .............. Heart ..............
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(218, 60, 111, 162),

                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.favorite,

                            color: const Color.fromARGB(255, 237, 174, 72),
                          ),
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                ),

                // .............. Ifo Container ................
                Padding(
                  padding: EdgeInsets.only(top: 350),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(188, 60, 111, 162),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    height: 200,
                    width: 423,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // .............. Info row1 ................
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              // Text..........
                              BoldText(
                                text: "Robusta Beans",
                                color: Colors.white,
                                size: 25,
                              ),

                              SizedBox(width: 60),

                              // cup container.......
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(125, 60, 111, 162),
                                ),
                                height: 70,
                                width: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.coffee_rounded,
                                      color: Color.fromARGB(255, 251, 179, 34),
                                      size: 35,
                                    ),
                                    LightText(
                                      text: "Cup",
                                      color:const Color.fromARGB(255, 212, 211, 211),
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(width: 30),

                              // location container.......
                              Container(
                                // location.......
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(125, 60, 111, 162),

                                ),
                                height: 70,
                                width: 60,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color.fromARGB(255, 251, 179, 34),
                                      size: 35,
                                    ),
                                    LightText(
                                      text: "Africa",
                                      color: const Color.fromARGB(255, 212, 211, 211),
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // .............. Info row2 ................
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 30,
                                color: const Color.fromARGB(255, 251, 179, 34),
                              ),
                              SizedBox(width: 5),

                              BoldText(text: "4.5", size: 20),

                              SizedBox(width: 10),

                              LightText(
                                text: "(6,6879)",
                                color: const Color.fromARGB(255, 212, 211, 211),
                                size: 15,
                              ),
                              SizedBox(width: 90),

                              Container(
                                
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:                                   const Color.fromARGB(125, 60, 111, 162),

                                ),
                                child: Center(child: LightText(text: "Medium Roasted",color: const Color.fromARGB(255, 212, 211, 211),size: 15,)),
                                height: 50,
                                width: 170,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                Bottomhalfbeanpage(),
              
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}
