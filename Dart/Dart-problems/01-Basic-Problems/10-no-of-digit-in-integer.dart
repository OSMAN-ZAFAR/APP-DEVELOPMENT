import 'dart:io';
void main()
{
   int n,count=0;
   print("Enter the number: ");
   n=int.parse(stdin.readLineSync()!);
   
  while(n!=0)
  {
      n=n~/10;
      count++;
  }
   print(count);
}  