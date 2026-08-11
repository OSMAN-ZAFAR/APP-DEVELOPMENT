import 'dart:io';

void main()
{
  int sum=0,numElement,element;
  print("How many elements you want to add in List?");
  numElement=int.parse(stdin.readLineSync()!);
  
  List<int> number=[];

  for(int i=1;i<=numElement;i++)
  {
     print("Enter the $i element of the List.");
     element=int.parse(stdin.readLineSync()!);

     number.add(element);
     sum=sum+element;
  }
  print("List= $number");
  print("Sum-of-elements= $sum");

}
