import 'package:flutter/material.dart';

import 'package:project/cloude_page/application_model.dart';

import 'package:project/core/constant/app_colors.dart';

class ApplicationsFilterSection extends StatelessWidget {
  final ApplicationStatus? activeFilter;
  final ValueChanged<ApplicationStatus?> onFilterChanged;

  const ApplicationsFilterSection({
    super.key,
    required this.activeFilter,
    required this.onFilterChanged,
  });

  static const _tabs = [
    (label: 'الكل', value: null),
    (label: 'معلق', value: ApplicationStatus.pending),
    (label: 'مقبول', value: ApplicationStatus.accepted),
    (label: 'مرفوض', value: ApplicationStatus.rejected),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: _tabs.reversed
            .map(
              (tab) => _FilterTab(
                label: tab.label,
                isActive: activeFilter == tab.value,
                onTap: () => onFilterChanged(tab.value),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _FilterTab extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _FilterTab({
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                color: isActive
                    ? AppColors.primaryGreen
                    : AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 4),
            if (isActive)
              Container(
                height: 2,
                width: 24,
                decoration: BoxDecoration(
                  color: AppColors.primaryGreen,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
