import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;

  const CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        color: AppColors.primaryGreenSoft,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: AppColors.primaryGreenBorder),
      ),
      child: const Center(
        child: Icon(
          Icons.mail_outline_rounded,
          size: 46,
          color: AppColors.primaryGreen,
        ),
      ),
    );
  }
}
