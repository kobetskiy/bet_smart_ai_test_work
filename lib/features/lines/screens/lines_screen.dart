import 'package:auto_route/auto_route.dart';
import 'package:bet_smart_ai/core/constants/app_icons.dart';
import 'package:bet_smart_ai/core/constants/app_images.dart';
import 'package:bet_smart_ai/features/lines/services/tab_service.dart';
import 'package:bet_smart_ai/features/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LinesScreen extends StatefulWidget {
  const LinesScreen({super.key});

  @override
  State<LinesScreen> createState() => _LinesScreenState();
}

class _LinesScreenState extends State<LinesScreen>
    with TickerProviderStateMixin {
  bool isNotificationOn = true;

  void toggleNotification() {
    isNotificationOn = !isNotificationOn;
    setState(() {});
  }

  late TabService tabService;

  @override
  void initState() {
    super.initState();
    tabService = Provider.of<TabService>(context, listen: false);
    tabService.init(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            AppBarWidget(
              title: Image.asset(AppImages.logo, width: 120),
              actions: [
                IconButton(
                  onPressed: toggleNotification,
                  icon: Image.asset(
                    isNotificationOn
                        ? AppIcons.notification
                        : AppIcons.notificationOff,
                    width: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImages.profile, width: 20),
                )
              ],
            ),
          ],
          body: const Column(
            children: [_TabBarWidget(), _TabBarViewWidget()],
          ),
        ),
      ),
    );
  }
}

class _TabBarWidget extends StatefulWidget {
  const _TabBarWidget();

  @override
  State<_TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<_TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tabService = Provider.of<TabService>(context, listen: false);
    return TabBar(
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        // ! needs improvement
        border: Border.all(color: theme.colorScheme.primary, width: 2),
        borderRadius: BorderRadius.circular(40),
      ),
      indicatorWeight: 0,
      indicatorPadding: const EdgeInsets.symmetric(vertical: 5),
      labelStyle: theme.textTheme.bodyMedium,
      unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Colors.grey,
          ),
      tabAlignment: TabAlignment.start,
      controller: tabService.controller,
      isScrollable: true,
      tabs: tabService.allTabsNames,
    );
  }
}

class _TabBarViewWidget extends StatelessWidget {
  const _TabBarViewWidget();

  @override
  Widget build(BuildContext context) {
    final tabService = Provider.of<TabService>(context, listen: false);
    return Expanded(
      child: TabBarView(
        controller: tabService.controller,
        physics: const NeverScrollableScrollPhysics(),
        children: tabService.allTabs,
      ),
    );
  }
}
