import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/data/model/profile/info_card_model.dart';

const List<InfoCardModel> infoCardData = [
  InfoCardModel(
    icon: Icons.monitor_heart_outlined,
    title: 'نشاط',
    subtitle: 'عالي',
    iconBackgroundColor: AppColors.iconBlueBg,
    iconColor: AppColors.accentBlue,
  ),
  InfoCardModel(
    icon: Icons.groups_2_outlined,
    title: 'قائد',
    subtitle: 'فريق',
    iconBackgroundColor: AppColors.badgeDoneBackground,
    iconColor: AppColors.primaryGreen,
  ),
  InfoCardModel(
    icon: Icons.star_border_rounded,
    title: 'مبتكر',
    subtitle: 'متميز',
    iconBackgroundColor: Color(0xFFFFF3D6),
    iconColor: AppColors.accentGold,
  ),
];
