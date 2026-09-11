// ignore_for_file: unused_field, unused_import

import 'package:get/get.dart';
import 'package:mvc_structure_app/Views/Homepage/homepage.dart';
import 'package:mvc_structure_app/Views/ProfilePage/profilepage.dart';

class AppRoutes {
  static const String home='/';
  static const String profile = '/profile';

  static final routes = [
    GetPage(name: '/', page:()=> Homepage()),
    GetPage(name: "/profile", page: () => Profilepage())];
}
