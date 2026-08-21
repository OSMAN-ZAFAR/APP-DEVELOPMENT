abstract class Animal{
  void makesound();          
}

                        // Every Animal must have a makeSound() method, but we're not defining how it works

                        // You also cannot directly create an object of an abstract class:

                        // Expose what is necessary; hide how it is implemented.

class Dog extends Animal{
  @override
  void makesound(){
    print('WOOF');
  }
}

class Cat extends Animal{
  @override
  void makesound(){
    print('Mewoo');
  }
}

void main()
{
  Dog animal1=Dog();
  animal1.makesound();

  Cat animal2=Cat();
  animal2.makesound();
}