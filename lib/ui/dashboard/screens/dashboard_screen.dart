import 'package:auto_route/auto_route.dart';
import 'package:boardforge_app/data/services/teams_service.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  static const String routeName = 'dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Dashboard Screen'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final teamsService = TeamsService();
                await teamsService.listAsync();
                debugPrint('Teams fetched, check console for details.');
              },
              child: Text('Fetch Teams'),
            ),
          ],
        ),
      ),
    );
  }
}
