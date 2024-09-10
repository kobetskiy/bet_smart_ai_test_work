import 'package:bet_smart_ai/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class OnBoardingAIImage extends StatelessWidget {
  const OnBoardingAIImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Transform.rotate(
              angle: 0.03,
              child: Image.asset(AppImages.aiSecondary, width: 220),
            ),
          ),
          Positioned(
            left: 0,
            top: 10,
            child: Transform.rotate(
              angle: -0.03,
              child: Image.asset(AppImages.aiMain, width: 240),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingLinesImage extends StatelessWidget {
  const OnBoardingLinesImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: Stack(
        children: [
          Positioned(
            right: 30,
            top: 50,
            child: Transform.rotate(
              angle: 0.05,
              child: Image.asset(
                AppImages.linesSecondary,
                width: 250,
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 20,
            child: Transform.rotate(
              angle: -0.05,
              child: Image.asset(
                AppImages.linesMain,
                width: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingPropsImage extends StatelessWidget {
  const OnBoardingPropsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 10,
            child: Transform.rotate(
              angle: -0.03,
              child: Image.asset(AppImages.propsSecondary, width: 240),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 30,
            child: Transform.rotate(
              angle: 0.03,
              child: Image.asset(AppImages.propsMain, width: 220),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingSureBetImage extends StatelessWidget {
  const OnBoardingSureBetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Image.asset(AppImages.sureBetSecondary, width: 190),
          ),
          Positioned(
            top: 25,
            child: Image.asset(AppImages.sureBetMain, width: 270),
          ),
        ],
      ),
    );
  }
}

class OnBoardingEvPlusImage extends StatelessWidget {
  const OnBoardingEvPlusImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 5,
            child: Transform.rotate(
              angle: -0.03,
              child: Image.asset(AppImages.evPlusSecondary, width: 220),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 80,
            child: Transform.rotate(
              angle: 0.03,
              child: Image.asset(AppImages.evPlusMain, width: 180),
            ),
          ),
        ],
      ),
    );
  }
}
