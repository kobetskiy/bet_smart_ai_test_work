import 'package:bet_smart_ai/core/constants/app_images.dart';
import 'package:bet_smart_ai/features/lines/screens/tabs_screens/tabs.dart';
import 'package:flutter/material.dart';

class TabService with ChangeNotifier {
  TabController? controller;

  final List<Widget> allTabs = [
    const CflTab(),
    const MlbTab(),
    const NbaTab(),
    const NflTab(),
    const NhlTab(),
  ];

  List<Tab> allTabsNames = [
    const Tab(child: _TabRow('CFL', AppImages.cfl)),
    const Tab(child: _TabRow('MLB', AppImages.mlb)),
    const Tab(child: _TabRow('NBA', AppImages.nba)),
    const Tab(child: _TabRow('NFL', AppImages.nfl)),
    const Tab(child: _TabRow('NHL', AppImages.nhl)),
  ];

  void init(TickerProvider vsync) {
    controller = TabController(length: allTabs.length, vsync: vsync);
    controller!.addListener(notifyListeners);
  }

  void disposeController() {
    controller?.removeListener(notifyListeners);
    controller?.dispose();
  }
}

class _TabRow extends StatelessWidget {
  const _TabRow(this.text, this.iconPath);

  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(iconPath, width: 20, height: 20),
          const SizedBox(width: 6),
          Text(text),
        ],
      ),
    );
  }
}
