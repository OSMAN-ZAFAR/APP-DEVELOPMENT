import 'dart:io';
void main()
{
    dynamic pass1,pass2,pass3,enterPassword;

    print("Enter the first password: ");
    pass1=stdin.readLineSync();
    print("Password-1 saved successfully !");

    
    print("Enter the second password: ");
    pass2=stdin.readLineSync();
    print("Password-2 is saved successfully !");

    
    print("Enter the third password: ");
    pass3=stdin.readLineSync();
    print("Password-3 is saved successfully !");

    
    print("Enter any password among 3: ");
    enterPassword=stdin.readLineSync();

    
    if(enterPassword==pass1)

      print("Great! You used first password. Screen is Unlocked.");

    else if(enterPassword==pass2)

       print("Great! You used second password. Screen is Unlocked.");

    else if(enterPassword==pass3)

       print("Great! You used third password. Screen is Unlocked.");

    else
       print("Wrong password. Screen is Locked.");   
       
       
    
}