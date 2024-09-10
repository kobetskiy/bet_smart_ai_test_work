import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'core/routing/router.dart';
import 'features/widgets/bottom_navigation_bar_widget.dart';

@RoutePage()
class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        LinesRoute(),
        PropsRoute(),
        SureBetRoute(),
        AIRoute(),
        EvPlusRoute(),
        BetsRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) => Theme(
        data: ThemeData(splashColor: Colors.transparent),
        child: BottomNavigationBarWidget(
          tabIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        ),
      ),
    );
  }
}
