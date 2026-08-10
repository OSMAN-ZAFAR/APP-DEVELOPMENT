import 'dart:io';

void main()
{
    int a;
    print("Enter the number: ");
    a=int.parse(stdin.readLineSync()!);
    
    signClassification(a);
}


void signClassification(int x)
{
    if(x>=0)
    {
        print("$x is Positive interger.");
    }
    else if(x<=0 )
    {
        print("$x is Negative interger .");
    }
    
    else
    {
        print("$x is Zero.");
    }
}