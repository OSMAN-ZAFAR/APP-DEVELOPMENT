import 'dart:io';

enum dayOfWeek{
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

void main()
{
  String day;
  print("Enter the day: ");
  day=stdin.readLineSync()!.toLowerCase();
  switch (day){
    case "monday":
      print('Monday');
       break;
    case "tuesday":
       print('Tuesday');
       break;
    case "wednesday":
       print('Wednesday');
       break;
    case "thursday":
       print('Thursday');
       break;
    case "friday":
       print('Friday');
       break;
    case "saturday":
       print('Saturday');
       break;
     case "sunday":
       print('Sunday');
       break;  

    default:
        print('Invalid Input !');               



  }
}