import 'dart:io';
void main()
{
    num number;
    print("Enter the Number: ");
    number=num.parse(stdin.readLineSync()!);    //Because the input from the user is in string format, we need to convert it into number format using .parse() method.
    
    if (number%2==0)
    {
        print("${number} is Even!");
    }
    else
    {
        print("${number} is Odd!");
    }
}