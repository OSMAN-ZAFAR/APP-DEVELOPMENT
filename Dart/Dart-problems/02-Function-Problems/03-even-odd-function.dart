import 'dart:io';

void main()
{
    int a;
    print("Enter the number: ");
    a=int.parse(stdin.readLineSync()!);
    
    evenOdd(a);
}


void evenOdd(int x)
{
    if(x%2==0)
    {
        print("$x is Even.");
    }
    else
    {
        print("$x is Odd.");
    }
}