import 'dart:io';
void main()
{
    int age;
    print("Enter your age: ");
    age=int.parse(stdin.readLineSync()!);
    
    if(age>=18)
      print("You're Eligible for voting.");
    else
     print("you're not Eligible for voting. ");
}