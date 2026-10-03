import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';

class ProfileStatCard extends StatelessWidget {
  final String value;
  final String label;
  final bool showBolt;

  const ProfileStatCard({
    super.key,
    required this.value,
    required this.label,
    this.showBolt = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: AppColors.backgroundCard,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: AppColors.borderCard),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
              color: AppColors.primaryGreen,
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showBolt) ...[
                Icon(Icons.bolt, size: 14, color: AppColors.iconOrange),
                const SizedBox(width: 4),
              ],
              Text(
                label,
                style: TextStyle(
                  color: AppColors.textHint,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
