import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:bet_smart_ai/core/constants/app_images.dart';
import 'package:bet_smart_ai/features/auth/widgets/on_boarding_images.dart';
import 'package:bet_smart_ai/features/auth/widgets/widgets.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with TickerProviderStateMixin {
  final _pageController = PageController();
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  void _onPageChanged(int index) {
    _tabController?.index = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: const [
                OnBoardingContent(
                  text:
                      'Leverage cutting-edge AI to get the most accurate sports predictions in the market.',
                  backgroundPath: AppImages.onBoardingBaseball,
                  image: OnBoardingAIImage(),
                ),
                OnBoardingContent(
                  text:
                      'Get real-time sports data with Live Team Stats, Head-to-Head comparisons, and more!',
                  backgroundPath: AppImages.onBoardingBasketball,
                  image: OnBoardingLinesImage(),
                  isTitleOnTop: false,
                ),
                OnBoardingContent(
                  text:
                      'Access top Player Prop predictions and unmatched statistics for smarter betting decisions.',
                  backgroundPath: AppImages.onBoardingBaseball2,
                  image: OnBoardingPropsImage(),
                ),
                OnBoardingContent(
                  text:
                      'Discover real-time SureBet opportunities for guaranteed profit across multiple sportsbooks instantly!',
                  backgroundPath: AppImages.onBoardingHockey,
                  image: OnBoardingSureBetImage(),
                  isTitleOnTop: false,
                ),
                OnBoardingContent(
                  text:
                      'Unlock unmatched EV+ bets with automated Bet Tracking and Grading for every wager.',
                  backgroundPath: AppImages.onBoardingFootball,
                  image: OnBoardingEvPlusImage(),
                ),
              ],
            ),
            Positioned(
              top: 45,
              left: 0,
              right: 0,
              child: Center(
                child: TabPageSelector(
                  controller: _tabController,
                  indicatorSize: 13,
                  borderStyle: BorderStyle.none,
                  color: Colors.white.withOpacity(0.5),
                  selectedColor: Colors.white,
                ),
              ),
            ),
            const Positioned(
              left: 0,
              right: 0,
              bottom: 80,
              child: Column(
                children: [
                  ContinueWithWidget(),
                  SizedBox(height: 15),
                  SignUpButtonsList(),
                ],
              ),
            ),
            TermsWidget(
              onTermsTap: () => log('Terms of Service clicked'),
              onPrivacyPolicyTap: () => log('Privacy Policy clicked'),
            )
          ],
        ),
      ),
    );
  }
}
