import 'package:flutter/material.dart';
import 'package:project/cloude_page/application_stat_model.dart';

class ApplicationStatCard extends StatelessWidget {
  final ApplicationStatModel model;

  const ApplicationStatCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: model.backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              '${model.count}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: model.textColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              model.label,
              style: TextStyle(fontSize: 12, color: model.textColor),
            ),
          ],
        ),
      ),
    );
  }
}
