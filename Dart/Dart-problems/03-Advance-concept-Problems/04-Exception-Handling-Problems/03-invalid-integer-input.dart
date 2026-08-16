
import 'dart:io';
void main()

{
  int age;
  try
  {
   print('Enter you age: ');
  age=int.parse(stdin.readLineSync()!);
  print(age);
  }
 on FormatException
  {
    print('Invalid Input ! Please enter the Integer value.');
  }


}