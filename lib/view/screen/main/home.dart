import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller/main/home_controller.dart';
import 'package:project/core/class/handlingdataview.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/view/widget/main/homewidget/featured_competition_card.dart';
import 'package:project/view/widget/main/homewidget/section/home_category_filter_section.dart';
import 'package:project/view/widget/search.dart';
import 'package:project/view/widget/main/homewidget/section/home_section_header.dart';
import 'package:project/view/widget/main/homewidget/section/home_stats_section.dart';
import 'package:project/view/widget/main/homewidget/section/home_top_header_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Scaffold(
      backgroundColor: AppColors.backgroundScreenLight,
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest!,
          widget: ListView(
            children: const [
              HomeTopHeaderSection(),
              SizedBox(height: 18),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: HomeStatsSection(),
              ),
              SizedBox(height: 14),
              HomeCategoryFilterSection(),
              SizedBox(height: 18),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: HomeSectionHeader(
                  title: 'المسابقات المميزة',
                  actionText: 'عرض الكل',
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: FeaturedCompetitionCard(),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
