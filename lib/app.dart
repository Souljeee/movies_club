import 'package:flutter/material.dart';
import 'package:movies_club/common/navigation/router_settings.dart';

class App extends StatelessWidget {
  final router = RouterSettings.router;

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      locale: const Locale('ru', 'RU'),
    );
  }
}
