// ------------------------------------ 1st Example -----------------------------------------

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


//   // ------------------------------------ 2nd Example -----------------------------------------

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

// ------------------------------------ 3rd Example -----------------------------------------


// class Student{

//   String name='';
//   int Class=0;
//   int marks=0;
//   int total=0;
//   Student(this.name,this.Class,this.marks,this.total);

//   void result()
//   {
//     print(name + ' got $marks out of $total marks in $Class standard.');
//   }
// }

// void main()
// {
//   Student student1=Student('ALi',11,495,545);
//  student1.result();


//  Student student2=Student('Usman ',12,1047,1200);
//  student2.result();
  
// }


// ------------------------------------ 4th Example -----------------------------------------

class BankAccount {
  String holder;
  double balance;

  BankAccount(this.holder, this.balance);

  void deposit(double depositAmount) {
    if (depositAmount <= 0) {
      print('Please deposit more than 0.');
      return;
    }

    balance += depositAmount;
    print('$holder deposited $depositAmount. Current balance is $balance.');
  }

  void withDraw(double withDrawAmount) {
    if (withDrawAmount > balance) {
      print('Insufficient Balance!');
      return;
    }

    balance -= withDrawAmount;
    print('$holder withdrew $withDrawAmount. Remaining balance is $balance.');
  }

  void checkBalance() {
    print('Current Balance = $balance');
  }
}

void main() {
  BankAccount user1 = BankAccount('Ali', 450000);
  user1.deposit(5000);
  user1.withDraw(5000);
  user1.checkBalance();

  BankAccount user2 = BankAccount('Hamza', 89080980);
  user2.deposit(40000);
  user2.withDraw(40000);
  user2.checkBalance();
}

