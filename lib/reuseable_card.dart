import 'package:flutter/material.dart';

//This builds out our card tiles in the app UI
class ReuseableContainer extends StatelessWidget {
  const ReuseableContainer({required this.onPress, required this.colour, required this.cardChild});
  final Function onPress;
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
