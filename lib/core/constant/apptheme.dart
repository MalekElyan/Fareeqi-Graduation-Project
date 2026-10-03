import 'package:project/core/constant/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeArabic = ThemeData(
    fontFamily: "Cairo",
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: AppColor.lightGray,
      ),

      headlineMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: AppColor.black,
      ),

      headlineSmall: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 23,
        color: AppColor.lightGray,
      ),

      // body text
      bodyLarge: TextStyle(
        height: 2,
        color: Color.fromARGB(255, 243, 242, 242),
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      bodyMedium: TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
      bodySmall: TextStyle(height: 2, color: AppColor.black, fontSize: 14),
    ),
    primarySwatch: Colors.green,
  );
}
