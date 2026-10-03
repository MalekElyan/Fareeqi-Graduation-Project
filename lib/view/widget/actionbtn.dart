import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final bool isFilled;
  final VoidCallback? onPressed;

  const ActionButton({
    super.key,
    required this.title,
    required this.isFilled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: isFilled
              ? AppColors.primaryGreen
              : AppColors.backgroundCard,
          foregroundColor: isFilled ? AppColors.white : AppColors.primaryGreen,
          side: BorderSide(
            color: isFilled
                ? AppColors.primaryGreen
                : AppColors.badgeDoneBorder,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
        ),
        child: Text(title),
      ),
    );
  }
}
