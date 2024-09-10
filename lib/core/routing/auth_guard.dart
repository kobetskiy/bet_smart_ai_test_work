import 'package:auto_route/auto_route.dart';
import 'package:bet_smart_ai/core/routing/router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    final prefs = await SharedPreferences.getInstance();
    final hasOnBoardingShown = prefs.getBool('hasOnBoardingShown') ?? false;

    if (hasOnBoardingShown) {
      resolver.next(true);
    } else {
      resolver.redirect(const OnBoardingRoute());
    }
  }
}
