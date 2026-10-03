import 'package:flutter/material.dart';
import 'package:project/data/datasource/static/profile/dataprofilepage.dart';
import 'package:project/view/widget/profile/info_tile_card.dart';

class ProfileInfoCardsSection extends StatelessWidget {
  const ProfileInfoCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: List.generate(infoCardData.length, (index) {
          final card = infoCardData[index];

          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: InfoTileCard(
                icon: card.icon,
                title: card.title,
                subtitle: card.subtitle,
                iconBackgroundColor: card.iconBackgroundColor,
                iconColor: card.iconColor,
              ),
            ),
          );
        }),
      ),
    );
  }
}
