import 'package:flutter/material.dart';

import 'go_router.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Bottom Navigation dengan Go Router',
      theme: ThemeData(
        // Contoh Tema Minimalis
        primarySwatch: Colors.blueGrey, // Warna primer utama
        scaffoldBackgroundColor: Colors.grey[100], // Warna latar belakang Scaffold
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blueGrey[700],
          unselectedItemColor: Colors.grey[600],
        ),
      )
    );
  }
}