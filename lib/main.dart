import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0b1033),
        primaryColor: const Color(0xFF101639),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF101639),
        ),
      ),
      home: const InputPage(),
    );
  }
}
