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
  print("Students Records: ");
    print(studentRecord);

 print("These students get A grades: ");
    Map<String,int> topper={};
    studentRecord.forEach((name,mark)
    {
      if(mark > 70)
      {
        topper[name]=mark;
      }
    });

    print(topper);

}
