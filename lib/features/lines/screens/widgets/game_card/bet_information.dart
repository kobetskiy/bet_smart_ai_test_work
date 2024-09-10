import 'package:bet_smart_ai/core/ui/theme.dart';
import 'package:bet_smart_ai/features/lines/models/bet_information_model.dart';
import 'package:flutter/material.dart';

class BetInformation extends StatelessWidget {
  const BetInformation({super.key, required this.betInformationModel});

  final BetInformationModel betInformationModel;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Column(
          children: [
            _TotalInformation(betInformationModel: betInformationModel),
            const SizedBox(height: 5),
            const _DetailInformation(),
          ],
        ),
      ),
    );
  }
}

class _TotalInformation extends StatelessWidget {
  const _TotalInformation({required this.betInformationModel});

  final BetInformationModel betInformationModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              betInformationModel.firstBetText,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(width: 5),
            Image.asset(betInformationModel.firstBetIconPath, width: 20),
          ],
        ),
        Text(betInformationModel.title,
            style: Theme.of(context).textTheme.titleSmall),
        Row(
          children: [
            Text(
              betInformationModel.secondBetText,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(width: 5),
            Image.asset(betInformationModel.secondBetIconPath, width: 20),
          ],
        ),
      ],
    );
  }
}

class _DetailInformation extends StatelessWidget {
  const _DetailInformation();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const _ColoredCirclesRow(greenCircleIndices: [1, 2, 5, 7]),
        Text('L10', style: Theme.of(context).textTheme.bodySmall),
        const _ColoredCirclesRow(
          greenCircleIndices: [2, 3, 4, 5, 7, 9],
          isNumberFirst: true,
        ),
      ],
    );
  }
}

class _ColoredCirclesRow extends StatelessWidget {
  const _ColoredCirclesRow({
    required this.greenCircleIndices,
    this.isNumberFirst,
  });

  final List<int> greenCircleIndices;
  final bool? isNumberFirst;

  @override
  Widget build(BuildContext context) {
    int circleNumber = 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isNumberFirst ?? false)
          Text(
            '${(greenCircleIndices.length * 10)}%',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: greenCircleIndices.length >= 5
                      ? Theme.of(context).colorScheme.success
                      : Colors.red,
                ),
          ),
        if (isNumberFirst ?? false) const SizedBox(width: 5),
        ...List.generate(10, (index) {
          circleNumber = index + 1;
          final isGreen = greenCircleIndices.contains(circleNumber);

          return Padding(
            padding: const EdgeInsets.all(1.5),
            child: CircleAvatar(
              radius: 2.2,
              backgroundColor:
                  isGreen ? Theme.of(context).colorScheme.success : Colors.red,
            ),
          );
        }),
        if (!(isNumberFirst ?? false)) const SizedBox(width: 5),
        if (!(isNumberFirst ?? false))
          Text(
            '${(greenCircleIndices.length * 10)}%',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: greenCircleIndices.length >= 5
                      ? Colors.green
                      : Colors.red,
                ),
          )
      ],
    );
  }
}
