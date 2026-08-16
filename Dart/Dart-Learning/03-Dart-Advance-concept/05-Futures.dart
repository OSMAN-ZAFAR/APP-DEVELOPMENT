
//--------------------------------- Future without async & await ---------------------------------

// void main()
// {
//   print("Hi");
//   Future.delayed(Duration(seconds:3),(){

//     print("My name is Usman.");

//   });


//--------------------------------- Future with Function---------------------------------
 void main()
{
  print("Customer placed an order. ");
  prepareFood().then(
  (food)
  {
    print(food);
    print("Thank you! for placing an order. Your order is on the way.");
  });

  print("Customer is browsing an App.");
}

Future<String> prepareFood()
{
  return Future.delayed(Duration(seconds :5),
  ()
  {
     return "DataBase is Updated.";
 
 });
}


