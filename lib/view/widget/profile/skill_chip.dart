import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';

class SkillChip extends StatelessWidget {
  final String title;

  const SkillChip({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.badgeDoneBackground,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.badgeDoneBorder),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.primaryGreen,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
