import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onPress;
  final String text;

  BottomButton({@required this.text, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kButtonStyle,
          ),
        ),
        color: kBottomContainercolor,
        margin: EdgeInsets.only(top: 10.00),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
