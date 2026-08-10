void main()
{
  int age=20;
  print(age);
//  int stores only the whole numbers.

double height=5.9;
print(height);
//  double stores decimal numbers(python and c++ use the also use the float data-type to store decimal numbers ).

String name="John";
print(name);

//  String stores text data.

num weight=70.5;
print(weight);
num mass=80;
print(mass);
// num can store both whole numbers and decimal numbers.

bool isStudent =true;
print(isStudent);
// bool stores only boolean(true or false) values.

dynamic address="New York";
print(address);

dynamic phoneNumber=1234567890;
print(phoneNumber);

dynamic weightage=75.5;
print(weightage);


// dynamic can store any type of data, but it is not recommended to use dynamic data-type because it can lead to unexpected errors in the program.

var number=32912319;
print(number);

// // number=3.4;
// print(number);        invalid syntax.

// var is a data-type that can store any type of data, but it is recommended to use var only when the data-type is not known at the time of writing the code.In var, once the data-type is assigned, it cannot be changed later in the program.

final country="USA";
print(country);

// country="India";
// print(country);     Invalid syntax


// final is same as the var but in it the value also cannot be changed once it is assigned.Moreover, final is used for runtime constants, which means the value can be assigned at runtime but cannot be changed later in the program.


const pi=3.14;
print(pi);

// same as final but in const the value must be assigned at compile time and cannot be changed later in the program.



}