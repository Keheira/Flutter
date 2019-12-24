import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPress;
  final IconData icon;

  RoundIconButton({this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 0.0,
      child: Icon(icon),
    );
  }
}
