import 'package:auto_route/auto_route.dart';
import 'package:boardforge_app/ui/core/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainLayoutScreen extends StatelessWidget {
  static const String routeName = '/main';
  const MainLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Layout')),
      body: AutoRouter(),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/48362994?v=4'),
                  ),
                  SizedBox(height: 10),
                  Text('Danny Lopez', style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            ListTile(title: Text('Teams'), onTap: () => {}),
            ListTile(title: Text('Projects'), onTap: () => {}),
            ListTile(
              title: Text('Sign out'),
              leading: Icon(Icons.logout),
              onTap: () {
                AutoRouter.of(context).push(const LoginRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
