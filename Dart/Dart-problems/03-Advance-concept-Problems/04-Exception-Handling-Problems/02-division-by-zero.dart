import 'dart:io';

void main()
{
  double a,b,result;
  print('Enter the first number: ');
  a=double.parse(stdin.readLineSync()!);

  print('Enter the second number: ');
  b=double.parse(stdin.readLineSync()!);

  if(b!=0)
  {
    result=a/b;
    print(result);
  }
  else
  {
    try{

    }
    on FormatException{
      print('Error: Invalid Input.');
    }
  }

}