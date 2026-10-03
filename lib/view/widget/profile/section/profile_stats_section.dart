import 'package:flutter/material.dart';
import 'package:project/data/datasource/static/profile/profile_stat_data.dart';
import 'package:project/view/widget/profile/profile_stat_card.dart';

class ProfileStatsSection extends StatelessWidget {
  const ProfileStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: List.generate(profileStatData.length, (index) {
          final stat = profileStatData[index];

          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: ProfileStatCard(
                value: stat.value,
                label: stat.label,
                showBolt: stat.showBolt,
              ),
            ),
          );
        }),
      ),
    );
  }
}
