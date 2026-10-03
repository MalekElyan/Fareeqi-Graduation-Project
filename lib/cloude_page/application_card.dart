import 'package:flutter/material.dart';
import 'package:project/cloude_page/application_model.dart';
import 'package:project/core/constant/app_colors.dart';

class ApplicationCard extends StatelessWidget {
  final ApplicationModel model;
  final VoidCallback onAccept;
  final VoidCallback onReject;

  const ApplicationCard({
    super.key,
    required this.model,
    required this.onAccept,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.backgroundCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderCard),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Row: Avatar + Info + Badge
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _StatusBadge(status: model.status),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    model.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    model.field,
                    style: const TextStyle(
                      fontSize: 13,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        '${model.rating}',
                        style: const TextStyle(
                          fontSize: 13,
                          color: AppColors.accentGold,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.star_rounded,
                        color: AppColors.accentGold,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 12),
              _Avatar(name: model.name),
            ],
          ),

          const SizedBox(height: 12),

          // Skills chips
          Wrap(
            spacing: 8,
            runSpacing: 6,
            alignment: WrapAlignment.end,
            children: model.skills.map((s) => _SkillChip(label: s)).toList(),
          ),

          const SizedBox(height: 12),

          // Actions — only if pending
          if (model.status == ApplicationStatus.pending)
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: onReject,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.colorRed,
                      side: const BorderSide(color: AppColors.colorRed),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('رفض'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: onAccept,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGreen,
                      foregroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('قبول الطلب'),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

// ─── Avatar ───────────────────────────────────────────
class _Avatar extends StatelessWidget {
  final String name;
  const _Avatar({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: const BoxDecoration(
        color: AppColors.avatarBackground,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        name.characters.first,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryGreen,
        ),
      ),
    );
  }
}

// ─── Status Badge ──────────────────────────────────────
class _StatusBadge extends StatelessWidget {
  final ApplicationStatus status;
  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    final (label, bg, text, border) = switch (status) {
      ApplicationStatus.pending => (
        'معلق',
        AppColors.statePendingBackground,
        AppColors.statePendingText,
        AppColors.warningBorder,
      ),
      ApplicationStatus.accepted => (
        'مقبول',
        AppColors.stateAcceptedBackground,
        AppColors.stateAcceptedText,
        AppColors.badgeDoneBorder,
      ),
      ApplicationStatus.rejected => (
        'مرفوض',
        AppColors.stateRejectedBackground,
        AppColors.colorRed,
        AppColors.colorRed,
      ),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: border),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: text,
        ),
      ),
    );
  }
}

// ─── Skill Chip ────────────────────────────────────────
class _SkillChip extends StatelessWidget {
  final String label;
  const _SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.backgroundScreenLight,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.borderCard),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
      ),
    );
  }
}
