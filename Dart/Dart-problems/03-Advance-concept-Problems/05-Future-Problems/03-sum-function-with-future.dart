
import 'dart:io';
void main()
{
  int a,b;
  print('Enter the first value: ');
  a=int.parse(stdin.readLineSync()!);

  print('Enter the second value: ');
  b=int.parse(stdin.readLineSync()!);

  calculateSum(a,b).then((sum)
  {
    print(sum);
  });
  

}

Future<int> calculateSum(int x,int y)
{
    return Future.delayed(Duration(seconds: 5),
  ()
  {
    return x+y;
  });
}
