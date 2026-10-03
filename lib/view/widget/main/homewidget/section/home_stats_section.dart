import 'package:flutter/material.dart';
import 'package:project/data/datasource/remote/home_stat_card_data.dart';
import 'package:project/view/widget/main/homewidget/home_stat_curd.dart';

class HomeStatsSection extends StatelessWidget {
  const HomeStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        children: List.generate(
          homeStatCardData.length,
          (index) => Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                end: index == homeStatCardData.length - 1 ? 0 : 10,
              ),
              child: HomeStatCard(item: homeStatCardData[index]),
            ),
          ),
        ),
      ),
    );
  }
}
