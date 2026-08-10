import 'dart:io';
void main()
{
    int n;
    print("Enter the number: ");
    n=int.parse(stdin.readLineSync()!);
    
    bool isPrime=true;
    
    for(int i=2;i<=n~/2;i++)
    {
     if(n%i==0)
     {
         isPrime=false;
         break;
     }
    }
    if(isPrime)
     {
         print("$n is prime.");
     }
     else
     {
         print("$n is not prime.");
     }
}