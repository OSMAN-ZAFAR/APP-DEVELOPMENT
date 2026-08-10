import 'dart:io';
void main()
{
    int n;
    print("Enter the number: ");
    n=int.parse(stdin.readLineSync()!);
    
    
    
    for(int i=2;i<=n;i++)
    {
        bool isPrime=true;
        
       for(int j=2;j<i;j++)
       {
           if(i%j==0)
           {
               isPrime=false;
               break;
           }
       }
        if(isPrime)
           {
               print(i);
           }
           
    }
}