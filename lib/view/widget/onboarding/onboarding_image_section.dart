import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';

class OnBoardingImageSection extends StatelessWidget {
  final String imagePath;

  const OnBoardingImageSection({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 400,
          decoration: const BoxDecoration(color: AppColors.primaryGreen),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(imagePath, height: 220, fit: BoxFit.contain),
        ),
      ],
    );
  }
}
