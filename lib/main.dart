// import 'package:boardforge_app/core/utils/environment.dart';
import 'package:boardforge_app/core/utils/environment.dart';
import 'package:boardforge_app/ui/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  // debugPrint('Current Environment: ${Environment.instance.environment}');
  await dotenv.load(fileName: 'production.env');

  debugPrint('BASE_API_URL: ${Environment.instance.baseApiUrl}');
  debugPrint('OTHER_ENVIRONMENT_VARIABLE: ${Environment.instance.otherEnvironmentVariable}');
  debugPrint('PRUEBA_VARIABLE: ${Environment.instance.pruebaVariable}');
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _appRouter.config());
  }
}
