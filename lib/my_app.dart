import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Focus Widget',
        theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 30),
            titleMedium: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 50,
              ),
            ),
          ),
        ),
        home: const HomePage(),
      );
}
