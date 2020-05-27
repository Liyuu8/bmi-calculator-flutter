import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlusOrMinusRoundIconButton extends StatelessWidget {
  PlusOrMinusRoundIconButton({@required this.isAdd, @required this.onPressed});

  final bool isAdd;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: isAdd ? Icon(FontAwesomeIcons.plus) : Icon(FontAwesomeIcons.minus),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
