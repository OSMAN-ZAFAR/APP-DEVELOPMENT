void main()
{
   add("5",5);
}

void add(dynamic a, dynamic b)
{
  try
  {
  print(a+b);
  }catch(e){          // try-catch(e) method will help us so that our program executed without   
                       // code terminating, it will catch the error in the code. 
    print(e);
  }
  print(" Code Executed ");


  // we can also defines the errors 
}