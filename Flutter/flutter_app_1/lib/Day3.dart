import 'package:flutter/material.dart';

class Day3 extends StatefulWidget {
  const Day3({super.key});

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // Login Bar
          title: Center(
            child: Text(
              "Login Page",
              style: TextStyle(
                fontSize: 25,
                color: const Color.fromARGB(255, 112, 249, 49),
              ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 102, 26, 18),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(    // create account text
              'Create Account',
              style: TextStyle(fontSize: 20,
              color: const Color.fromARGB(255, 102, 26, 18)),
              
            ),

            Padding(   // email input box,
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your Email : ',
                  
                  icon: Icon(
                    Icons.email,
                    color: const Color.fromARGB(255, 102, 26, 18),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            Padding(    // password input box,
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your password : ',
                  icon: Icon(
                    Icons.lock,
                    color: const Color.fromARGB(255, 102, 26, 18),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            Padding(   // forget password,
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('Forget Password', style: TextStyle(fontSize: 17,
                color: const Color.fromARGB(255, 102, 26, 18))),
              ),
            ),

            SizedBox(height: 25),

            ElevatedButton(
              // login button,
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 102, 26, 18),
              ),
              child: Text(
                'Login.....',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 112, 249, 49),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
