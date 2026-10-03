import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/cloude_page/applications_controller.dart';
import 'package:project/cloude_page/applications_data.dart';
import 'package:project/cloude_page/applications_filter_section.dart';
import 'package:project/cloude_page/applications_header_section.dart';
import 'package:project/cloude_page/applications_list_section.dart';
import 'package:project/cloude_page/applications_stats_section.dart';
import 'package:project/core/constant/app_colors.dart';

class ApplicationsPage extends StatelessWidget {
  const ApplicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ApplicationsController());

    return Scaffold(
      backgroundColor: AppColors.backgroundScreenLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ── Header ──────────────────────────────
              ApplicationsHeaderSection(
                title: 'إدارة الطلبات',
                subtitle: 'تحدي الابتكار وريادة الأعمال',
                onBack: () => Get.back(),
              ),

              const SizedBox(height: 8),

              // ── Stats ────────────────────────────────
              ApplicationsStatsSection(stats: ApplicationsData.stats),

              const SizedBox(height: 4),

              // ── Filter Tabs ──────────────────────────
              Obx(
                () => ApplicationsFilterSection(
                  activeFilter: controller.activeFilter.value,
                  onFilterChanged: controller.setFilter,
                ),
              ),

              Divider(
                color: AppColors.borderCard,
                height: 1,
                indent: 20,
                endIndent: 20,
              ),

              const SizedBox(height: 16),

              // ── List ─────────────────────────────────
              Obx(
                () => ApplicationsListSection(
                  applications: controller.filteredList,
                  onAccept: controller.acceptApplication,
                  onReject: controller.rejectApplication,
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
