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

String updateName;
int updateMarks;
 print("Which studnet's data you want to update in database, Enter name: ");
updateName=stdin.readLineSync()!;

print("Enter the student's updated marks:  ");
updateMarks=int.parse(stdin.readLineSync()!);

if(studentRecord.containsKey(updateName))
{
  studentRecord[updateName]=updateMarks;
}

print("Updated Student Records: ");
print(studentRecord);

}
