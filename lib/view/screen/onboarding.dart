import 'package:get/get.dart';
import 'package:project/controller/onboarding_controller.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/view/widget/onboarding/custombutton.dart';
import 'package:project/view/widget/onboarding/customslider.dart';
import 'package:flutter/material.dart';
import 'package:project/view/widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: AppColors.backgroundScreenLight,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(flex: 4, child: CustomSliderOnBoarding()),
            const CustomDotControllerOnBoarding(),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  Spacer(flex: 2),
                  CustomButtonOnBoarding(),
                  Spacer(flex: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
