import 'package:auto_route/auto_route.dart';
import 'package:bet_smart_ai/app_screen.dart';
import 'package:bet_smart_ai/core/routing/auth_guard.dart';
import 'package:bet_smart_ai/features/tabs_screens.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AppRoute.page,
          path: '/',
          guards: [AuthGuard()],
          children: [
            AutoRoute(page: LinesRoute.page, path: 'lines'),
            AutoRoute(page: PropsRoute.page, path: 'props'),
            AutoRoute(page: SureBetRoute.page, path: 'sure_bet'),
            AutoRoute(page: AIRoute.page, path: 'ai'),
            AutoRoute(page: EvPlusRoute.page, path: 'ev_plus'),
            AutoRoute(page: BetsRoute.page, path: 'bets'),
          ],
        ),
        AutoRoute(page: OnBoardingRoute.page, path: '/on_boarding')
      ];
}
