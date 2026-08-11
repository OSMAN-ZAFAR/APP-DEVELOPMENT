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
  
  int largest=number[0];
 for(int i=1;i<numElement;i++)
  {
     if(largest<number[i])
       largest=number[i];
    
  }

print("The Largest number = $largest ");

int smallest=number[0];
 for(int i=1;i<numElement;i++)
  {
     if(smallest>number[i])
       smallest=number[i];
    
  }

print("The smallest number = $smallest ");


}

