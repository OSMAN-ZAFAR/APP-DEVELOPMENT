import 'dart:io';

void main()
{
  int n;
  print("How many student's records you want to enter in School Data Base.");
  n=int.parse(stdin.readLineSync()!);
  String name;
  int marks;
  Map<String,int> studentRecord={};

  for(int i=1;i<=n;i++)
  {
    print("Enter the $i student's Name: ");
    name=stdin.readLineSync()!;

    print("Enter the $i student's Marks: ");
    marks=int.parse(stdin.readLineSync()!);

    studentRecord[name]=marks;

  }
    print(studentRecord);

}
