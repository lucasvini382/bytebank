import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BytebankApp());
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.green,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const DashboardContainer(),
    );
  }
}
