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
        home: const InputPage(),
        theme: ThemeData.dark().copyWith(
          //App theme for our slider
          sliderTheme: SliderTheme.of(context).copyWith(
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
            thumbColor: const Color(0xFFEB1555),
            overlayColor: const Color(0x30EB1555),
            activeTrackColor: const Color(0xFFFFFFFF),
            inactiveTrackColor: const Color(0xFF8D8E98),
          ),
          //General app theme
          scaffoldBackgroundColor: const Color(0xFF0b1033),
          primaryColor: const Color(0xFF101639),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF101639),
          ),
        ));
  }
}
