import 'dart:io';

void main()
{
    int a,b,c;
    print("Enter the first number: ");
    a=int.parse(stdin.readLineSync()!);
    
    print("Enter the second number: ");
    b=int.parse(stdin.readLineSync()!);
    
    print("Enter the third number: ");
    c=int.parse(stdin.readLineSync()!);
    
    isGreater(a,b,c);
}


void isGreater(int x,int y, int z)
{
    if(x>y&&x>z)
    {
        print("$x is Greater.");
    }
    else if(y>x&&y>z)
    {
        print("$y is Greater.");
    }
    
    else
    {
        print("$z is Greater.");
    }
}