import 'dart:io';
void main()
{
  int numElement,element;
  print("how many elements you want to add in List?");
  numElement=int.parse(stdin.readLineSync()!);

  List <int> number=[];
  for(int i=1;i<=numElement;i++)
  {
    print("Enter the $i element of the List: ");
    element=int.parse(stdin.readLineSync()!);
    number.add(element);
  }

  print("List = $number");

  print("The Even numbers in the list:  ");
     evenList(number);
  print("The odd numbers in the list: ");
      oddList(number);

}

void evenList(List<int> number)
{
  List<int> even=[];
  
 for(int i=0;i<number.length;i++)
  {
    if(number[i]%2==0)
       even.add(number[i]);
    
  }

  for(int i=0;i<even.length;i++)
  {
       print(even[i]);
  }

}

void oddList(List<int> number)
{
  List<int> odd=[];
 for(int i=0;i<number.length;i++)
  {
    if(number[i]%2!=0)
      odd.add(number[i]);
  }


   for(int i=0;i<odd.length;i++)
  {
       print(odd[i]);
  }

}
