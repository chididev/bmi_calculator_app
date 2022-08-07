import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

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
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 60, 0, 30),
                    child: Expanded(
                      child: Text(
                        resultText.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: kResult,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      bmiResult,
                      textAlign: TextAlign.center,
                      style: kResultNumber,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      interpretation,
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
