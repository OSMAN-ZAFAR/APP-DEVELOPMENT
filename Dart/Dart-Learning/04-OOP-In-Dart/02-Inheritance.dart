class Vehical 
{
  void move()
  {
    print('Vehical is moving');
  }
}

// --------------------------------- Inheritance By Using extends --------------------------------

class Car extends Vehical 
{
  void drift()                    
  {
    print('Car is drifting');  // Now car class has fully access of vehical class. 
  }
}

void main()
{
  Vehical vehical1=Vehical();
  vehical1.move();

  Car car1=Car();
  car1.move();
}