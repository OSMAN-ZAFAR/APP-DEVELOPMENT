import 'dart:io';

void main()
{
    int age;
    print("Enter your age: ");
    age=int.parse(stdin.readLineSync()!);
    
    bool result=isEligibleToVote(age);
    
    if(result==true)
    {
        print("You're eligilble for vote.");
    }
    else
    {
        print("You're not eligilble for vote.");
    }
}

bool isEligibleToVote(int age)
{
    bool eligible=true;
    if(age>=18)
    {
        eligible=true;
    }
    else
    {
        eligible=false;
    }
    
    return eligible;
}