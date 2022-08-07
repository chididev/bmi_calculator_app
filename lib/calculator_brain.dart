import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});
  final int weight;
  final int height;

  late double _bmi;
  //This would calculate our BMI
  String bmi(){
   _bmi = weight / pow(height/100, 2);
   return _bmi.toStringAsFixed(1);
  }

  //This would fetch bmi result after calculation.
  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5) {
      return 'Normal';
    }else{
      return 'Underweight';
    }
    }

    //This would interpret bmi result.
    String getInterpretation(){
      if(_bmi >= 25){
        return 'Your bmi result is above normal and you are overweight. You should try exercising more often.';
      }else if(_bmi > 18.5) {
        return 'Your bmi result is normal. Well Done.';
      }else{
        return 'Your bmi result is below normal and you are underweight. You should try eating more.';
      }
    }

  }
