import 'dart:io';
void main()
{
    int n1,n2,n3;
    print("Enter the first number: ");
    n1=int.parse(stdin.readLineSync()!);
    
    print("Enter the second number: ");
    n2=int.parse(stdin.readLineSync()!);
    
    print("Enter the third number: ");
    n3=int.parse(stdin.readLineSync()!);
    
    if(n1>n2&&n1>n3)
      print("$n1 is Greater. ");
    else if( n2>n1&&n2>n3)
      print("$n2 is Greater. ");
    else
      print("$n3 is Greater. ");
}