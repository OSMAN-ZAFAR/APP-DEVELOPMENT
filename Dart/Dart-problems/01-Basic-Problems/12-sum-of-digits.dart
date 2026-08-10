import 'dart:io';
void main()
{
    int n,digit,sum=0;
    print("Enter the number: ");
    n=int.parse(stdin.readLineSync()!);
    
    while(n>0)
    {
        digit=n%10;
        sum=sum+digit;
        n=n~/10;
        
    }
    
    print("The sum of digits is= $sum");
}