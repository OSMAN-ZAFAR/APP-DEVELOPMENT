class pay 
{
  void payment()
  {
    print('Paying.........');
  }
}

class JazzCash extends pay
{
  @override
  void payment()        // Ploymorphism   

  // IN Ploymorphism , basically you're overriding the parent's method in children class.
  {
    print('Paying via JazzCash.');
  }
}


class EasyPaisa extends pay
{
  @override
  void payment()
  {
    print('Paying via EasyPaisa.');
  }
}


void main()
{
  pay user1 = EasyPaisa();
  user1.payment();
}