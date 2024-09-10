import 'package:bet_smart_ai/core/constants/app_icons.dart';
import 'package:bet_smart_ai/features/lines/models/bet_information_model.dart';
import 'package:flutter/material.dart';

import 'bet_information.dart';
import 'game_card_score.dart';
import 'game_information.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const GameCardScore(),
            const SizedBox(height: 10),
            const GameInformation(),
            const SizedBox(height: 10),
            BetInformation(
              betInformationModel: BetInformationModel(
                firstBetText: '+108',
                secondBetText: '-126',
                firstBetIconPath: AppIcons.moneylineFirstIcon,
                secondBetIconPath: AppIcons.moneylineSecondIcon,
                title: 'Moneyline',
              ),
            ),
            const SizedBox(height: 10),
            BetInformation(
              betInformationModel: BetInformationModel(
                firstBetText: 'O 10.5 (-106)',
                secondBetText: 'U 10.5 (-114)',
                firstBetIconPath: AppIcons.totalsFirstIcon,
                secondBetIconPath: AppIcons.totalsSecondIcon,
                title: 'Totals',
              ),
            ),
            const SizedBox(height: 10),
            BetInformation(
              betInformationModel: BetInformationModel(
                firstBetText: '-2.5 (-135)',
                secondBetText: '-1.5 (+122)',
                firstBetIconPath: AppIcons.spreadFirstIcon,
                secondBetIconPath: AppIcons.spreadSecondIcon,
                title: 'Spread',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
