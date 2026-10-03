import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/view/widget/profile/skill_chip.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  bool showAll = false;

  final List<String> skills = [
    'UI/UX',
    'SQL',
    'Flutter',
    'React',
    'React',
    'React',
    'React',
    'React',
    'Python',
  ];

  @override
  Widget build(BuildContext context) {
    final displayedSkills = showAll ? skills : skills.take(5).toList();

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.backgroundCard,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.borderCard),
      ),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    showAll = !showAll;
                  });
                },
                child: Text(
                  showAll ? 'عرض أقل' : 'عرض الكل',
                  style: const TextStyle(
                    color: AppColors.primaryGreen,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'المهارات',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: displayedSkills
                .map((skill) => SkillChip(title: skill))
                .toList(),
          ),
        ],
      ),
    );
  }
}
