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

    print("The Topper Student: ");
    print(topper(studentRecord));

    print("The Defaulter Student: ");
    print(defaulter(studentRecord));

List<int> result=resultStudent(studentRecord);
int pass=result[0];
int fail=result[1];
    print("-------RESULTS----------");
    print("Pass : $pass");
    print("Fail : $fail");




}

// ------------------------Topper-Student-Function----------------------------


Map<String,int> topper( Map<String,int> record)
{
  int highMarks=0;
  String topperName="";
  record.forEach((name,mark)
  {
  if(mark>highMarks)
  {
    highMarks=mark;
    topperName=name;
  }
  });

  return {
    topperName: highMarks
  };
}



// ------------------------Defaulter-Student-Function----------------------------


Map<String,int> defaulter(Map<String,int> record)
{
   int lowestMarks=record.values.first;
  String defaulterName="";
  record.forEach((name,mark)
  {
  if(mark<lowestMarks)
  {
    lowestMarks=mark;
    defaulterName=name;
  }
  });

  return {
    defaulterName: lowestMarks
  };

}



// ------------------------Passed & Failed-Student-Function----------------------------
List<int> resultStudent(Map<String,int> record)
{
  int pass=0,fail=0;
  record.forEach((name,marks)
  {
    if(marks>50)
    {
      pass=pass+1;
    }
    else
    {
      fail=fail+1;
    }
  });
  List<int> result=[pass,fail];
  return result;
}