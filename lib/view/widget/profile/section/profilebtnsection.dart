import 'package:flutter/material.dart';
import 'package:project/view/widget/actionbtn.dart';

class ProfileBtnSection extends StatelessWidget {
  const ProfileBtnSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: ActionButton(
              title: 'رسالة',
              isFilled: false,
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ActionButton(
              title: 'تعديل الملف',
              isFilled: true,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
