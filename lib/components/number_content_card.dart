import 'package:flutter/material.dart';

import '../constants.dart';
import 'plus_or_minus_round_icon_button.dart';

class NumberContentCard extends StatelessWidget {
  NumberContentCard({
    @required this.contentLabel,
    @required this.contentUnit,
    @required this.contentNumber,
    @required this.onMinusButtonPressed,
    @required this.onPlusButtonPressed,
  });

  final String contentLabel;
  final String contentUnit;
  final int contentNumber;
  final Function onMinusButtonPressed;
  final Function onPlusButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          contentLabel,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              contentNumber.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              contentUnit,
              style: kLabelTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PlusOrMinusRoundIconButton(
              isAdd: false,
              onPressed: onMinusButtonPressed,
            ),
            SizedBox(
              width: 10.0,
            ),
            PlusOrMinusRoundIconButton(
              isAdd: true,
              onPressed: onPlusButtonPressed,
            )
          ],
        )
      ],
    );
  }
}
