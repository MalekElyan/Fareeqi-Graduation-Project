import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:project/controller/auth/verfiycodesignup_controller.dart';
import 'package:project/core/constant/app_colors.dart';

class CustomOTP extends StatelessWidget {
  const CustomOTP({super.key, required this.controller});

  final VerifyCodeSignUpControllerImp controller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: OtpTextField(
        numberOfFields: 5,
        fieldWidth: 49,
        borderRadius: BorderRadius.circular(18),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        borderColor: AppColors.borderInput,
        focusedBorderColor: AppColors.primaryGreen,
        enabledBorderColor: AppColors.borderInput,
        filled: true,
        fillColor: Colors.white,
        showFieldAsBox: true,
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: AppColors.primaryGreen,
        ),
        onCodeChanged: (String code) {},
        onSubmit: (String verificationCode) {
          controller.goToSuccessSignUp(verificationCode);
        },
      ),
    );
  }
}
