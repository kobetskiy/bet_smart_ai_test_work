import 'package:bet_smart_ai/core/constants/app_icons.dart';
import 'package:bet_smart_ai/core/constants/app_images.dart';
import 'package:bet_smart_ai/features/lines/screens/widgets/game_card/game_card.dart';
import 'package:flutter/material.dart';

class CflTab extends StatelessWidget {
  const CflTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const _Title(),
            const SizedBox(height: 10),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 4,
              itemBuilder: (context, index) => const GameCard(),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
            )
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            'Game Lines',
            style: theme.textTheme.titleSmall!.copyWith(
              fontSize: 16,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: 6),
          Image.asset(AppImages.bestOdds, width: 50),
          const SizedBox(width: 6),
          Text(
            '17 Games',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.primary,
                ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Image.asset(AppIcons.filter, width: 20),
          )
        ],
      ),
    );
  }
}
