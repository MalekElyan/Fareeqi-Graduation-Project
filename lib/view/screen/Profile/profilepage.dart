import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/view/widget/profile/section/profile_header.dart';
import 'package:project/view/widget/profile/section/profile_info_cards_section.dart';
import 'package:project/view/widget/profile/section/profile_stats_section.dart';
import 'package:project/view/widget/profile/section/profilebtnsection.dart';
import 'package:project/view/widget/profile/section/skillssection.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScreenLight,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ProfileHeader(),
                    const SizedBox(height: 16),
                    const ProfileStatsSection(),
                    const SizedBox(height: 25),
                    const ProfileBtnSection(),
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: SkillsSection(),
                    ),
                    const SizedBox(height: 30),
                    const ProfileInfoCardsSection(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'الملف الشخصي',
                style: TextStyle(
                  color: AppColors.textHint,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
