import 'package:flutter/material.dart';

class GameInformation extends StatelessWidget {
  const GameInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(fontWeight: FontWeight.w700);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: const Color(0xFF33775C),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: _StatsRow(),
          ),
          const Divider(
            color: Color(0xFF5C927D),
            height: 20,
            thickness: 4,
          ),
          Text('LAST PLAY', style: style),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: const Color(0xFF2E554A),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text(
                '(Shotgun) R.Wilson pass short left to C.Sutton for 6 yards, TOUCHDOWN. Penalty on KC-L.Sneed',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _StatsRow extends StatelessWidget {
  const _StatsRow();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _Stat(text: 'INNINGS', count: '3'),
        _Stat(text: 'OUTS', count: '0'),
        _Stat(text: 'STRIKES', count: '0'),
        _Stat(text: 'BALLS', count: '0'),
      ],
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.text, required this.count});

  final String text;
  final String count;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(fontWeight: FontWeight.w700);
    return Row(
      children: [
        Text(text, style: style),
        const SizedBox(width: 3),
        ColoredBox(
          color: const Color(0xFF2E554A),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Text(count, style: style),
          ),
        )
      ],
    );
  }
}
