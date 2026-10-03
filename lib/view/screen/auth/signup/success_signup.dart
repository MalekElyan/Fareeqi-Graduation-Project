import 'package:project/controller/auth/successsignup_controller.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/view/widget/auth/verify_widget/customcheak_icon.dart';
import 'package:project/view/widget/auth/verify_widget/subtitleverify.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SuccessSignUpControllerImp controller = Get.put(
      SuccessSignUpControllerImp(),
    );

    return Scaffold(
      backgroundColor: AppColors.backgroundScreenLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(flex: 3),
                const SuccessCircle(),
                const SizedBox(height: 35),
                Text(
                  "تم تسجيل الحساب بنجاح",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: const Color(0xff111827),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 12),
                const SubTitleVerify(
                  text: "يمكنك الآن المتابعة وتسجيل الدخول إلى حسابك",
                  size: 16,
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: CustomButtomAuth(
                    text: "التالي",
                    onPressed: () {
                      controller.goToPageLogin();
                    },
                  ),
                ),
                const Spacer(flex: 2),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SuccessCircle extends StatelessWidget {
  const SuccessCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xffF4FBF6),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff157347).withOpacity(0.08),
            blurRadius: 30,
            spreadRadius: 4,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Center(child: CustomIcon(icon: Icons.check_circle_rounded)),
    );
  }
}
