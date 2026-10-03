import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';

class HomeSectionHeader extends StatelessWidget {
  final String title;
  final String actionText;

  const HomeSectionHeader({
    super.key,
    required this.title,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        Text(
          actionText,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.primaryGreen,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
