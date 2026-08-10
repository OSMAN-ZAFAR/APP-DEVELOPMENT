void main()
{
  for(int i=1;i<=10;i++)           // for loop
  {
    print(i);
  }

  int i=1;
  while(i<=10)              // while loop
  {
    print(i);
    i++;
  }

  int j=1;
  do
  {
    print(j);         // do-while loop
    j++;  
  }while(j<=10);

int number;
List<int> numbers=[1,2,3,4,5,6,7,8,9,10];
for(number in numbers)
{
  print(number); // for-in loop is used to iterate over the elements of a collection, such as a list or a set.
}


List<String> names=["Ali","Ahmed","osman","usman"];

names.forEach((name) => print(name));          // for-each loop is same as for-in but there is no control over the loop variable.we can't use the break and continue statements in for-each loop.


}