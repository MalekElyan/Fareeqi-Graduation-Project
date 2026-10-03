import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:project/view/screen/auth/login.dart';
import 'package:project/view/screen/main/home.dart';
// import 'package:project/view/screen/home/home_page.dart';
// import 'package:project/view/screen/explore/explore_page.dart';
// import 'package:project/view/screen/create/create_page.dart';
// import 'package:project/view/screen/chat/chat_page.dart';
// import 'package:project/view/screen/profile/profile_page.dart';

class BottomNavControllerImp extends GetxController {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    Login(),
    HomePage(),
    Login(),
    HomePage(),
    // ExplorePage(),
    // CreatePage(),
    // ChatPage(),
    // ProfilePage(),
  ];

  void changePage(int index) {
    if (currentIndex == index) return;
    currentIndex = index;
    update();
  }
}
