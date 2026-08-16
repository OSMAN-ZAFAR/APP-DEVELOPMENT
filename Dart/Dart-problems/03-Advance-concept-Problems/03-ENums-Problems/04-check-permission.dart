import 'dart:io';

enum UserRole {
  admin,
  editor,
  user,
  guest
}

void main()
{
  String role;

  print("Enter your role: ");
  role = stdin.readLineSync()!.toLowerCase();

  switch(role)
  {
    case "admin":
      checkPermissions(UserRole.admin);
      break;

    case "editor":
      checkPermissions(UserRole.editor);
      break;

    case "user":
      checkPermissions(UserRole.user);
      break;

    case "guest":
      checkPermissions(UserRole.guest);
      break;

    default:
      print("Invalid role!");
  }
}


void checkPermissions(UserRole role)
{
    switch(role){
      case UserRole.admin:
        print('Yor can manage users, modify settings, create and delete content.');
      break;

      case UserRole.editor:
        print('You can create and edit content but cannot manage users.');
      break;

      case UserRole.user:
        print('You can view content and perform normal application activities.');
      break;

      case UserRole.guest:
        print('You can only view limited/public content.');
      break;

    }
}


