import 'package:flutter/material.dart';
import 'package:project/view/widget/main/homewidget/category_chip.dart';

class HomeCategoryFilterSection extends StatelessWidget {
  const HomeCategoryFilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final filters = ['الكل', 'مسابقة', 'مشروع', 'برمجيات'];

    return SizedBox(
      height: 46,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return HomeCategoryChip(
            label: filters[index],
            isSelected: index == 0,
          );
        },
      ),
    );
  }
}
