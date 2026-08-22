import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  const Day1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children:[
                 Container(
                height: 880,
                width: 430,
                color: const Color.fromARGB(255, 21, 71, 96),
                child: Center(
                  child: Text(
                    
                    // propoties of TextStyle:-
              
                    //  fontSize,  color,   fontWeight,  fontStyle ,  fontFamily,  letterSpacing,  wordSpacing, height(control Line-Height), decoration(under-line,over-line,none,line-through, decorationColor, decorationThickness,  decorationStyle, etc....... )
              
                    'Hello Everyone!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.lightGreenAccent,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2,
                      wordSpacing: 5,
                      height: 1.3,
                      
                      shadows: [
                        Shadow(
                          color: const Color.fromARGB(255, 246, 87, 87),
                          offset: Offset(3, 3),
                          blurRadius: 5,
                        ),
              
                      ],
                    ),
                  ),
                ),              
              ),
              Container(
                height: 100,
                width: 430,
                color: const Color.fromARGB(255, 119, 237, 100),
                
                child: Center(
                  child: Text('Home Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 11, 73, 109)
                  ),
                  
                  ),
                 
                )

                
               
              )
              
              ]
            ),
          
          ],
        ),
      ),
    );
  }
}
