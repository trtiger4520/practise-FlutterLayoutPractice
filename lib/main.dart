import 'package:flutter/material.dart';

import 'components/main_app_bar.dart';
import 'components/main_bottom_nav_bar.dart';
import 'components/main_tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _getTheme(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

  ThemeData _getTheme() {
    var baseTheme = ThemeData(
      fontFamily: 'Outfit',
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromRGBO(146, 103, 249, 1),
        primary: const Color.fromRGBO(146, 103, 249, 1),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromRGBO(146, 103, 249, 1),
          iconSize: 40),
      useMaterial3: true,
    );

    return baseTheme;
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: const MainTabView(),
      bottomNavigationBar: const MainBottomNavBar(),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () => {},
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
