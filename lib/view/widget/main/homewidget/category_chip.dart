import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';

class HomeCategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  const HomeCategoryChip({
    super.key,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryGreen : Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFD9DED9)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : const Color(0xFF333333),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
