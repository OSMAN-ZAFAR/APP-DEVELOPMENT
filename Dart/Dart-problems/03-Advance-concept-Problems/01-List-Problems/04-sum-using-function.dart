import 'dart:io';

void main()
{
  int numElement,element;
  print("How many elements you want to add in List?");
  numElement=int.parse(stdin.readLineSync()!);
  
  List<int> number=[];
  for(int i=1;i<=numElement;i++)
  {
     print("Enter the $i element of the List.");
     element=int.parse(stdin.readLineSync()!);

     number.add(element);
  }

  print("List = $number");
  int result=sumOfElement(number);
  print("Sum-of-elements= $result");


}
int sumOfElement(List<int> number)
{
  int sum=0;
 for(int i=0;i<number.length;i++)
  {
  
     sum=sum+number[i];
  }

  return sum;
}


