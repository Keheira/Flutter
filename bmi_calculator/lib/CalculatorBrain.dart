import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain(this.height, this.weight);

  String calculateBMI() {
    _bmi = weight / pow(height * 2.5 / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'Going to keep it 100 with ya fam....\nyou gotta hit the gym and/or clean up your eating.';
    else if (_bmi > 18.5)
      return 'Your normal or whatever. Congrats!';
    else
      return 'Are you eating?? This is too low. Go get a shake right now.';
  }
}
