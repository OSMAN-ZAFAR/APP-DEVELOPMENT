import 'dart:io';
void main()
{
   int n,fact=1;
   print("Enter the number: ");
   n=int.parse(stdin.readLineSync()!);
   
   for(int i=1;i<=n;i++)
   {
       fact=fact*i;
   }
   print("The Factorial of $n = $fact");
}  