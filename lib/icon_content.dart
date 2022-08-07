import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

//This builds out our icons on the app UI card tiles.
class IconContent extends StatelessWidget {
  const IconContent({required this.iconName, required this.label});
  final IconData iconName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 50.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
