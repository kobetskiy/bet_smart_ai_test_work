import 'package:bet_smart_ai/core/constants/app_images.dart';
import 'package:bet_smart_ai/core/ui/theme.dart';
import 'package:flutter/material.dart';

class GameCardScore extends StatelessWidget {
  const GameCardScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const _FirstTeam(),
        Column(
          children: [
            Text(
              'Today\n3:30PM',
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            Text(
              'Live •',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.success,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const _SecondTeam()
      ],
    );
  }
}

class _SecondTeam extends StatelessWidget {
  const _SecondTeam();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '2',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.success,
                    ),
              ),
              TextSpan(
                text: ' Yankees',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
        const SizedBox(width: 5),
        Image.asset(AppImages.yankees, width: 26),
      ],
    );
  }
}

class _FirstTeam extends StatelessWidget {
  const _FirstTeam();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImages.redSox, width: 26),
        const SizedBox(width: 5),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Red Sox ',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              TextSpan(
                text: '0',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.success,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
