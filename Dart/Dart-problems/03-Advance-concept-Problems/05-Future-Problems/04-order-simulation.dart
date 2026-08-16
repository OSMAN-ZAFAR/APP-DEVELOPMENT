void main()
{
  print('WELCOME TO THE HOME SCREEN !');

print('The user info is loading.....');
userProfile().then((info)
{
  print(info);

   print('The order info is loading.....');
   orderData().then((data)
   {
     print(data);
    });
});

}

Future<String> userProfile()
{
    return Future.delayed(Duration(seconds: 5),
  ()
  {
    return "The user info is Here: ";
  });
}

Future<String> orderData()
{
  return Future.delayed(Duration(seconds: 3),()
  {
    return "The Order data is here: ";
  });
}


