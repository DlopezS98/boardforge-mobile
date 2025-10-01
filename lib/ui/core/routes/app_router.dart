import 'package:auto_route/auto_route.dart';
import 'package:boardforge_app/ui/authentication/screens/login_screen.dart';
import 'package:boardforge_app/ui/authentication/screens/signup_screen.dart';

import './app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Screen|View,Route")
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, path: LoginScreen.routeName, initial: true),
    AutoRoute(page: SignupRoute.page, path: SignupScreen.routeName),
  ];
}
