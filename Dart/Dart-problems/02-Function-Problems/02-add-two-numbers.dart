import 'dart:io';
void main()
{
    int x,y,result;
    print("Enter the first number: ");
    x=int.parse(stdin.readLineSync()!);
    
    print("Enter the second number: ");
    y=int.parse(stdin.readLineSync()!);
    
    result=add(x,y);
    print("The sum of both numbers = $result");
    
   
}

int add(int num1, int num2)
{
    int sum=num1+num2;
    return sum;
}