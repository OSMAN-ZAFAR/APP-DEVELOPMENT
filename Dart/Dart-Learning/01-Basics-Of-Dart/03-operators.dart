void main()
{
  int a=10;
  int b=20;

                                  // Arithmetic operators :-

  print(a+b);

  print(a-b);
  
  print(a*b);
  
  print(a/b);
  // IN dart the division operator (/) always returns a double value,so that's why the division ooperator should be double.
  //  However, if you want to get the whole number as a result of the division, you can use the integer division operator (~/) instead of the division operator (/).

  print(a~/b);

                                   // Unary operators :-

  print(++a); 

  print(a++); 
  
  print(--b); 
  
  print(b--); 

  print(~a);
  // Negation operator (~) is used to invert the bits of a number. It is a bitwise operator that flips the bits of a number, changing 0s to 1s and 1s to 0s.

  // For example,
  // if a=10, its binary representation is 00001010. When we apply the negation operator (~) to a, it will flip the bits to 11110101, which is -11 in decimal.
  
  // let's suppose n=10, then ~n=-11   , it is working on the principle of two's complement representation of negative numbers in binary   -(n+1).


                              // Logical operators :-

  print(a>5 && b<30);

  print(a>5 || b<30);


                              // Assignment operators :-
  print(a+=5);
  print(a-=5);
  print(a*=5);
  // print(a/=5);   it's data type should be double.
  print(a%=5);
  print(a~/=5);
  print(a&=5);


// // Null-aware operators :-

int? Age;
print(Age);

// int height1;
// print(height1);    it'll give an error because it is not initialized but in the case of int? it can be null.

Age ??= 25;
print(Age);

//   ??= is a null-aware operator that assigns a value to a variable only if the variable is currently null. If the variable already has a value, the assignment will not take place. 




}



