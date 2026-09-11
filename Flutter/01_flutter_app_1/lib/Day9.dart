import 'package:flutter/material.dart';

class Day9 extends StatelessWidget {
  const Day9({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: Column(  
        children: [  // Image loading by asset........
          Image.asset('assets/G.png')    
        ,
        
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42g12m86anZCKhjR-K1BKrb3PxkIy_SEUeVmJeDgppA&s=10',
        height: 450,width: 200,)
        
        ],

        
       ),
      
      ),
    );
  }
}