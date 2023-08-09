import 'dart:io';

import 'package:custom_calendar/core/resources/app_router.dart';
import 'package:custom_calendar/core/resources/app_strings.dart';
import 'package:custom_calendar/core/resources/app_theme.dart';
import 'package:custom_calendar/core/services/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  ServiceLocator.init();
  HttpOverrides.global = MyHttpOverrides();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: getApplicationTheme(),
      routerConfig: AppRouter().router,
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
