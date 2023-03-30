import 'package:flutter/material.dart';
import 'package:movies_club/common/navigation/router_settings.dart';
import 'package:reactive_forms/reactive_forms.dart';

class App extends StatelessWidget {
  final router = RouterSettings.router;

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConfig(
      validationMessages: {
        ValidationMessage.required: (error) => 'Обязательноеп поле',
      },
      child: MaterialApp.router(
        routerConfig: router,
        locale: const Locale('ru', 'RU'),
      ),
    );
  }
}
