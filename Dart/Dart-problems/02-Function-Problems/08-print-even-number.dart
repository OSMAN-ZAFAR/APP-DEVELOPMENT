import 'dart:io';

void main()
{
    int n;
    print("Enter the number: ");
    n=int.parse(stdin.readLineSync()!);
    
    printEvenNum(n);
    
    
}

void printEvenNum(int n)
{
    for(int i=1;i<=n;i++)
    {
        if(i%2==0)
        {
            print(i);
        }
        
    }
}