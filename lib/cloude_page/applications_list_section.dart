import 'package:flutter/material.dart';
import 'package:project/cloude_page/application_card.dart';
import 'package:project/cloude_page/application_model.dart';

class ApplicationsListSection extends StatelessWidget {
  final List<ApplicationModel> applications;
  final void Function(String id) onAccept;
  final void Function(String id) onReject;

  const ApplicationsListSection({
    super.key,
    required this.applications,
    required this.onAccept,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    if (applications.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.only(top: 60),
          child: Text('لا توجد طلبات'),
        ),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: applications.length,
      itemBuilder: (_, index) {
        final app = applications[index];
        return ApplicationCard(
          model: app,
          onAccept: () => onAccept(app.id),
          onReject: () => onReject(app.id),
        );
      },
    );
  }
}
