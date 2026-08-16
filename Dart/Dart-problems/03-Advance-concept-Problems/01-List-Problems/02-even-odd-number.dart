import 'dart:io';

void main()
{
  List<int> number=[];
  int numElement,element;
  print("How many elements you want to add in List?");
  numElement=int.parse(stdin.readLineSync()!);
  

  for(int i=1;i<=numElement;i++)
  {
     print("Enter the $i element of the List.");
     element=int.parse(stdin.readLineSync()!);

     number.add(element);
    
  }
  print("List= $number");
  print("The Even numbers :-");

 number.forEach((element)
   {
    if(element%2==0)
    print(element);
   }
 );

 print("The Odd numbers :-");

 number.forEach((element)
   {
    if(element%2!=0)
    print(element);
   }
 );


}
