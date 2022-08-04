import 'package:flutter/material.dart';
import 'package:bmi_calculator/reuseable_code.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Gender selector enumeration
enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color defaultTileColor = kInactiveColor;

  void selectedGender(){}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Expanded(
                    child: ReuseableContainer(
                      colour: kInactiveColor,
                      cardChild: IconLabelStyle(
                        iconName: FontAwesomeIcons.mars,
                        gender: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableContainer(
                    colour: kInactiveColor,
                    cardChild: IconLabelStyle(
                        iconName: FontAwesomeIcons.venus, gender: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
