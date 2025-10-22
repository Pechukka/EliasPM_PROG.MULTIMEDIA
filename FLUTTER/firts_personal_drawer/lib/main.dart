import 'package:flutter/material.dart';
import 'screens/screen1.dart';

void main() {
  runApp(const MyApp());
}

  class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Drawer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const Screen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}