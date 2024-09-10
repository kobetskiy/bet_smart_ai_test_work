import 'package:flutter/material.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.text,
    required this.backgroundPath,
    required this.image,
    this.isTitleOnTop,
  });

  final String text;
  final String backgroundPath;
  final Widget image;
  final bool? isTitleOnTop;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundPath),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          colors: isTitleOnTop ?? true
              ? [
                  const Color(0xFF006BB6),
                  const Color(0xFFFF7950),
                  const Color(0x7D000000)
                ]
              : [
                  const Color(0xFF006BB6),
                  const Color(0x7D000000),
                  const Color(0xFFFF7950)
                ],
          stops:
              isTitleOnTop ?? true ? const [0.2, 0.9, 1] : const [0.1, 0.6, 1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 80),
          if (isTitleOnTop ?? true)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                text,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          image,
          if (!(isTitleOnTop ?? true))
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                text,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
        ],
      ),
    );
  }
}
