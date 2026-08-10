import 'dart:io';
void main()
{
    int n,reverse=0,digit;
    print("Enter the number: ");
    n=int.parse(stdin.readLineSync()!);
    
    while(n>0)
    {
        digit=n%10;
        reverse=reverse*10+digit;
        n=n~/10;
    }
    
    print(reverse);
}  