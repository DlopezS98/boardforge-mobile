import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainLayoutScreen extends StatelessWidget {
  static const String routeName = '/main';
  const MainLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Main Layout')), body: Center(child: Text('Main Layout Screen')));
  }
}
