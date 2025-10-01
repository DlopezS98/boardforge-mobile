import 'package:auto_route/auto_route.dart';
import 'package:boardforge_app/ui/authentication/screens/login_screen.dart';
import 'package:boardforge_app/ui/authentication/screens/signup_screen.dart';
import 'package:boardforge_app/ui/core/layouts/main_layout_screen.dart';
import 'package:boardforge_app/ui/dashboard/screens/dashboard_screen.dart';
import 'package:boardforge_app/ui/profile/screens/profile_screen.dart';

import './app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Screen|View,Route")
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, path: LoginScreen.routeName),
    AutoRoute(page: SignupRoute.page, path: SignupScreen.routeName),
    AutoRoute(
      page: MainLayoutRoute.page,
      path: MainLayoutScreen.routeName,
      initial: true,
      children: [
        AutoRoute(page: DashboardRoute.page, path: DashboardScreen.routeName, initial: true),
        AutoRoute(page: ProfileRoute.page, path: ProfileScreen.routeName),
      ],
    ),
  ];
}
