import 'package:flutter/material.dart';
import 'package:newtask/pages/login.dart';
import 'package:newtask/pages/regsitration.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: registrationPage(),
    );
  }
}