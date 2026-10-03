import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.warningBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.warningBorder, width: 1),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: AppColors.warningIcon,
            size: 24,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              "تأكد من التحقق من مجلد البريد غير المرغوب فيه إذا لم تجد الرسالة.",
              style: TextStyle(
                fontSize: 14,
                height: 1.7,
                color: AppColors.warningText,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
