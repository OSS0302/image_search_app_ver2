import 'package:flutter/material.dart';
import 'package:image_search_app_ver2/di/di_setup.dart';
import 'package:image_search_app_ver2/presentation/main/main_screen.dart';
import 'package:image_search_app_ver2/routes.dart';

void main() {
  diSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

