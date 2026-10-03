import 'package:flutter/material.dart';
import 'package:project/bindings/intialbindings.dart';
import 'package:project/cloude_page/applications_page.dart';
import 'package:project/core/class/curd.dart';
import 'package:project/core/constant/apptheme.dart';
import 'package:project/core/services/services.dart';
import 'package:project/routes.dart';
import 'package:get/get.dart';
import 'package:project/view/screen/auth/login.dart';
import 'package:project/view/screen/main/home.dart';
import 'package:project/view/screen/main/mainscreen.dart';

void main() async {
  Get.lazyPut(() => Curd());
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

// This widget is the root of your application.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().themeArabic,
      home: MainScreen(),
      routes: routes,
      initialBinding: InitialBindings(),
    );
  }
}
