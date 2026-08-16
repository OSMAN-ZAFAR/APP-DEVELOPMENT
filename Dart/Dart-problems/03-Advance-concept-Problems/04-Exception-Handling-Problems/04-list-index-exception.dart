import 'dart:io';

void main()
{
  List<String> names=['Usman','Arslan','Hamza','Saqib'];

  int name;
  print('Enter the index of the name: ');
  name=int.parse(stdin.readLineSync()!);

  try
  {
    print(names[name]);
  }
  on RangeError
  {
    print('No Found !Enter the index between 0 to 3.');
  }

}