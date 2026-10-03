import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/core/constant/color.dart';

class Headersignup extends StatelessWidget {
  const Headersignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 60, bottom: 30),
      decoration: BoxDecoration(
        color: AppColors.primaryGreen,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildStep("2", false),
              buildLine(),
              buildStep("1", true),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "مرحباً! لنبدأ بالحساب",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "أدخل بياناتك الأساسية",
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

Widget buildStep(String number, bool isActive) {
  return Column(
    children: [
      CircleAvatar(
        radius: 14,
        backgroundColor: isActive ? Colors.white : Colors.white38,
        child: Text(
          number,
          style: TextStyle(
            color: isActive ? Colors.green : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(height: 5),
      Text(
        number == "1" ? "الأساسية" : "التحقق",
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    ],
  );
}

// 🔹 Line
Widget buildLine() {
  return Container(width: 40, height: 2, color: Colors.white);
}
