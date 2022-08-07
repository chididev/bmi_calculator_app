import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Expanded(
              child: Center(
                child: Text(
                  'YOUR RESULT',
                  style: kResultText,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableContainer(
              onPress: () {},
              colour: kActiveColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 60, 0, 30),
                    child: Expanded(
                      child: Text(
                        'Normal',
                        textAlign: TextAlign.center,
                        style: kResult,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '18.5',
                      textAlign: TextAlign.center,
                      style: kResultNumber,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Your BMI result is quite low and you are underweight. You should try to eat more',
                      textAlign: TextAlign.center,
                      style: kResultBodyText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              label: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
