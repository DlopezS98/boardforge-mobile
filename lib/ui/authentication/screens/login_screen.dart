import 'package:auto_route/auto_route.dart';
import 'package:boardforge_app/ui/core/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Screen'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const MainLayoutRoute());
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?", style: TextStyle(fontSize: 12, color: Colors.deepPurple)),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () => AutoRouter.of(context).push(SignupRoute()),
                    child: const Text('Sign up', style: TextStyle(color: Colors.blueAccent, fontSize: 12)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
