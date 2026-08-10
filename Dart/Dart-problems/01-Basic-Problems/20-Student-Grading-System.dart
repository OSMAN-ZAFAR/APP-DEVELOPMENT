import 'dart:io';
void main()
{
    int totalSubjects,totalMarks,sum=0,marks;
    
    print("How many subjects you're persuaded? ");
    totalSubjects=int.parse(stdin.readLineSync()!);
    
    print("Enter the total marks of all subjects: ");
    totalMarks=int.parse(stdin.readLineSync()!);
    
    for(int i=1;i<=totalSubjects;i++)
    {
        print("Enter the marks of  $i subject: ");
        marks=int.parse(stdin.readLineSync()!);
        sum=sum+marks;
    }
    double avg;
    avg=(sum/totalMarks)*100;
    
    if(avg>=90)
    {
        print("You got A+ Grade with $avg percent.");
    }
    else if(avg>=80 && avg<=89)
    {
        print("You got A Grade with $avg percent.");    
    }
    else if(avg>=70 && avg<=79)
    {
        print("You got B Grade with $avg percent.");    
    }
    else if(avg>=60 && avg<=69)
    {
        print("You got C Grade with $avg percent.");    
    }
    else if(avg>=50 && avg<=59)
    {
        print("You got D Grade with $avg percent.");    
    }
    else 
    {
        print("You got F Grade with $avg percent.");    
    }
    
    
}