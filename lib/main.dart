import 'package:flutter/material.dart';
import 'package:uas050/buttom_navigation.dart';
import 'login.dart'; // Import halaman login
// ignore: unused_import
import 'dashboard.dart'; // Import halaman login

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UAS 20210120050',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/dashboard': (context) => Navigasi(),
        // '/': (context) => LoginApp(),
      },
    );
  }
}
