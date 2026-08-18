
// class Car 
// {
//   String brand='';
//   int speed=0;        // class

//   void drive()
//   {
//     print(brand +' is driving with $speed km/h.');
//   }
// }

// void main() {
//   String str1 = 'Usman';
//   print(str1.length);
//   String str2 = 'Ali';
//   print(str2.length);


//   // ------------------------------------ Observations -----------------------------------------

//                // if we compare the data type and classes concept then we can see that these're the same , the data type = class-name , the variable name = object name. 

//               //  By this observation we can say that there may be multiple objects of one class. 

// Car myCar1 =Car();    // object 1
// myCar1.brand='BMW S7';
// myCar1.speed=150;
// myCar1.drive();


// Car myCar2 =Car();      // object 2
// myCar2.brand='Honda Civic';
// myCar2.speed=130;
// myCar2.drive();

// }


class Student{

  String name='';
  int Class=0;
  int marks=0;
  int total=0;
  Student(this.name,this.Class,this.marks,this.total);

  void result()
  {
    print(name + ' got $marks out of $total marks in $Class standard.');
  }
}

void main()
{
  Student student1=Student('ALi',11,495,545);
 student1.result();


 Student student2=Student('Usman ',12,1047,1200);
 student2.result();
  
}
















