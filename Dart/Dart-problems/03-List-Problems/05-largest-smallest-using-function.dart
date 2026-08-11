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


  int larger=largest(number);
  int smaller=smallest(number);

  print("The Largest number in the list:  $larger");
  print("The smallest number in the list:  $smaller");


}

int largest(List<int> number)
{
  int largest=number[0];
 for(int i=1;i<number.length;i++)
  {
    if(largest<number[i])
      largest=number[i];
  }
  return  largest;
}

int smallest(List<int> number)
{
  int smallest=number[0];
 for(int i=1;i<number.length;i++)
  {
    if(smallest>number[i])
      smallest=number[i];
  }
  return  smallest;
}
