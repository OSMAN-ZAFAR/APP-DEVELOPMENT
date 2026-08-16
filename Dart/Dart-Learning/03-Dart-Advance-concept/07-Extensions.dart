
extension inty on int
{
  bool get isEven =>this%2==0;        // extension on int checking either it is even or not . 
}

extension gmailx on String
{
  bool get isgmail=>contains("gmail.com");        // extension on string checking either it is 
                                                  // gmail or not. 
}


void main() 
{
print(2345.isEven);

print("osman@gmail.com".isgmail);

}