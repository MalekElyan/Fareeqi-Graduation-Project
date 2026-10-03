import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';

class OnBoardingTextSection extends StatelessWidget {
  final String title;
  final String body;

  const OnBoardingTextSection({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            body,
            textAlign: TextAlign.center,
            style: const TextStyle(
              height: 1.8,
              color: AppColors.textSecondary,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
