import 'package:project/controller/auth/verfiycodesignup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/core/class/handlingdataview.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/view/widget/auth/custombuttonauth.dart';
import 'package:project/view/widget/appcircle_icon_btn.dart';
import 'package:project/view/widget/auth/verify_widget/infobox.dart';
import 'package:project/view/widget/auth/verify_widget/resendcodetext.dart';

import 'package:project/view/widget/auth/verify_widget/custom_otp.dart';
import 'package:project/view/widget/auth/verify_widget/customcheak_icon.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpControllerImp());

    return Scaffold(
      backgroundColor: AppColors.backgroundScreenLight,
      body: GetBuilder<VerifyCodeSignUpControllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest!,
          widget: SafeArea(
            child: Stack(
              children: [
                const _VerifyHeaderBackground(),
                ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          AppCircleIconButton(
                            icon: Icons.arrow_back_ios_new_rounded,
                            iconSize: 18,
                            onTap: () => Get.back(),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "رجوع",
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),

                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.fromLTRB(24, 28, 24, 22),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(34),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.05),
                            blurRadius: 24,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: 96,
                              height: 96,
                              decoration: BoxDecoration(
                                color: AppColors.primaryGreen.withOpacity(.10),
                                borderRadius: BorderRadius.circular(28),
                                border: Border.all(
                                  color: AppColors.primaryGreen.withOpacity(
                                    .18,
                                  ),
                                ),
                              ),
                              child: const CustomIcon(
                                icon: Icons.mail_outline_rounded,
                              ),
                            ),
                          ),
                          const SizedBox(height: 22),
                          Text(
                            "تحقق من بريدك",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22,
                                ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "أرسلنا رمز مكون من 6 أرقام إلى",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  color: AppColors.textSecondary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            controller.email!,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  color: AppColors.primaryGreen,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          const SizedBox(height: 26),

                          CustomOTP(controller: controller),

                          const SizedBox(height: 22),
                          const TimerWidget(),
                          const SizedBox(height: 8),
                          Text(
                            "الوقت المتبقي لإعادة الإرسال",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(
                                  color: AppColors.textSecondary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: 5),
                          //delete
                          SizedBox(
                            height: 60,
                            width: 180,
                            child: CustomButtomAuth(
                              text: "تأكيد الرمز",
                              onPressed: () {},
                            ),
                          ),

                          const SizedBox(height: 25),
                          const Center(child: ResendCodeText()),
                        ],
                      ),
                    ),

                    const SizedBox(height: 18),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: InfoBox(),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _VerifyHeaderBackground extends StatelessWidget {
  const _VerifyHeaderBackground();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.primaryGreen,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -35,
                top: -5,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: const Color(0x0DFFFFFF),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                right: -45,
                top: -28,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color(0x0DFFFFFF),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerifyCodeSignUpControllerImp>(
      builder: (controller) {
        return Text(
          controller.timerText,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: AppColors.primaryGreen,
            letterSpacing: 2,
          ),
        );
      },
    );
  }
}
