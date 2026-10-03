import 'package:flutter/material.dart';
import 'package:project/cloude_page/application_model.dart';
import 'package:project/cloude_page/application_stat_model.dart';

import 'package:project/core/constant/app_colors.dart';

class ApplicationsData {
  ApplicationsData._();

  static const List<ApplicationModel> applications = [
    ApplicationModel(
      id: '1',
      name: 'ليلى حسن',
      field: 'علم البيانات',
      rating: 4.8,
      skills: ['Python', 'ML'],
      status: ApplicationStatus.pending,
    ),
    ApplicationModel(
      id: '2',
      name: 'محمد علي',
      field: 'نظم المعلومات',
      rating: 4.5,
      skills: ['React', 'Node.js'],
      status: ApplicationStatus.pending,
    ),
    ApplicationModel(
      id: '3',
      name: 'رنا خالد',
      field: 'هندسة برمجيات',
      rating: 4.9,
      skills: ['UI/UX', 'Figma'],
      status: ApplicationStatus.accepted,
    ),
  ];

  static List<ApplicationStatModel> stats = [
    ApplicationStatModel(
      label: 'معلق',
      count: 2,
      textColor: AppColors.statePendingText,
      backgroundColor: AppColors.statePendingBackground,
    ),
    ApplicationStatModel(
      label: 'مقبول',
      count: 1,
      textColor: AppColors.stateAcceptedText,
      backgroundColor: AppColors.stateAcceptedBackground,
    ),
    ApplicationStatModel(
      label: 'مرفوض',
      count: 1,
      textColor: AppColors.colorRed,
      backgroundColor: AppColors.stateRejectedBackground,
    ),
  ];
}
