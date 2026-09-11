// ignore_for_file: non_constant_identifier_names, unnecessary_overrides, unused_import

import 'package:get/get.dart';
import 'package:mvc_structure_app/Models/user_model.dart';
import 'package:mvc_structure_app/Services/user_service.dart';

class UserController extends GetxController {
    final UserService userService = UserService();

    late Rx<User> user;

    @override
  void onInit() {

        super.onInit();

        user = userService.getUser().obs;
  }

  void UserUpdate(String Newname,String NewEmail){

    user.value=User(name: Newname, email: NewEmail);
    
  }
}