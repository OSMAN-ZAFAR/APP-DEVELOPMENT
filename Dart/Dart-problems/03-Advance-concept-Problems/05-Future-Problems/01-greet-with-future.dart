void main()
{
  print("Hey I'm Usman");
  Future.delayed(Duration(seconds: 4),()
  {
    print('Hello From Future!');
  });
}