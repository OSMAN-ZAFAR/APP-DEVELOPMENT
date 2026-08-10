import 'dart:io';

void main()
{
    int n;
    print("Enter the number: ");
    n=int.parse(stdin.readLineSync()!);
    
    printNum(n);
    
    
}

void printNum(int n)
{
    for(int i=1;i<=n;i++)
    {
        print(i);
    }
}