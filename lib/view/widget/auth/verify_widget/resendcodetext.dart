import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller/auth/verfiycodesignup_controller.dart';
import 'package:project/core/constant/app_colors.dart';

class ResendCodeText extends StatelessWidget {
  const ResendCodeText({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerifyCodeSignUpControllerImp>(
      builder: (controller) {
        return TextButton(
          onPressed: controller.canResend
              ? () {
                  controller.resendCode();
                }
              : null,
          child: Text.rich(
            TextSpan(
              text: "لم تستلم الرمز؟ ",
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: "إعادة الإرسال",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: controller.canResend
                        ? AppColors.primaryGreen
                        : Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
