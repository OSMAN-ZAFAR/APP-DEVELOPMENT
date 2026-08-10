import 'dart:io';
void main()
{
    int n,sum=0;
    print("Enter the last number of your counting: ");
    n=int.parse(stdin.readLineSync()!);
    
    for(int i=0;i<=n;i++)
    {
     sum=sum+i;
     print(i);
    }
   print("The total sum is: $sum");
}