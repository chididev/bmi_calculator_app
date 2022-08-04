import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

//This builds out our card tiles in the app UI
class ReuseableContainer extends StatelessWidget {
  const ReuseableContainer({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      child: cardChild,
    );
  }
}

//This builds out our icon and styles

class IconLabelStyle extends StatelessWidget {
  const IconLabelStyle({required this.iconName, required this.gender});
  final IconData iconName;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 80.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          gender,
          style: kFontStyle,
        ),
      ],
    );
  }
}