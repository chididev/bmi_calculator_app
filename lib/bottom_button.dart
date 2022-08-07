import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

//This builds out our bottom calculate button.
class BottomButton extends StatelessWidget {
  const BottomButton({required this.label, required this.onPress});
  final String label;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      color: kBottomButtonColour,
      height: kBottomButtonHeight,
      width: double.infinity,
      child: TextButton(
        onPressed: () => onPress(),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
