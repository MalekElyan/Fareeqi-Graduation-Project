import 'package:project/cloude_page/applications_list_section.dart';
import 'package:project/cloude_page/applications_page.dart';
import 'package:project/core/constant/routes.dart';
import 'package:project/view/screen/Profile/editprofile.dart';
import 'package:project/view/screen/Profile/profilepage.dart';
import 'package:project/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:project/view/screen/auth/login.dart';
import 'package:project/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:project/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:project/view/screen/auth/signup/success_signup.dart';
import 'package:project/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:project/view/screen/auth/signup/verifycodesignup.dart';
import 'package:project/view/screen/main/home.dart';
import 'package:project/view/screen/main/mainscreen.dart';
import 'package:project/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

import 'cloude_page/applications_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const Login(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
  // OnBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(),
  //profile
  AppRoute.profile: (context) => const ProfilePage(),
  AppRoute.editProfile: (context) => const EditProfilePage(),

  //main
  AppRoute.main: (context) => const MainScreen(),
  AppRoute.home: (context) => const HomePage(),
  AppRoute.applicationsPage: (context) => const ApplicationsPage(),
};
