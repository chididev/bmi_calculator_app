import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

//This builds out our icon floating button.
class IconFloatingButton extends StatelessWidget {
  const IconFloatingButton({required this.icon, required this.onPress});
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPress(),
      elevation: 2.0,
      fillColor: kActiveColour,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
