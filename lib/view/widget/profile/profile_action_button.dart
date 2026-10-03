import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';

class ProfileActionButton extends StatelessWidget {
  final String title;
  final bool filled;
  final VoidCallback? onTap;

  const ProfileActionButton({
    super.key,
    required this.title,
    required this.filled,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: filled ? AppColors.primaryGreen : AppColors.backgroundCard,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: filled ? AppColors.primaryGreen : AppColors.badgeDoneBorder,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: filled ? Colors.white : AppColors.primaryGreen,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
