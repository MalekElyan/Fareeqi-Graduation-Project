import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/view/widget/appcircle_icon_btn.dart';
import 'package:project/view/widget/search.dart';

class HomeTopHeaderSection extends StatelessWidget {
  const HomeTopHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 70),
          decoration: const BoxDecoration(
            color: AppColors.primaryGreen,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(34)),
          ),
          child: SafeArea(
            bottom: false,
            child: Column(
              children: [
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'مرحباً',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('👋', style: TextStyle(fontSize: 24)),
                              SizedBox(width: 8),
                              Text(
                                'أحمد العتيبي',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12, height: 10),
                    AppCircleIconButton(
                      icon: Icons.notifications,
                      iconSize: 22,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        Positioned(left: 20, right: 20, bottom: 15, child: Search()),
      ],
    );
  }
}
