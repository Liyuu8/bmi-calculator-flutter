import 'package:flutter/material.dart';

import '../constants.dart';

class HeightCard extends StatelessWidget {
  HeightCard({@required this.height, @required this.onSliderChanged});

  final int height;
  final Function onSliderChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'HEIGHT',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              height.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            thumbColor: kAccentColor,
            overlayColor: kAccentColor.withAlpha(0x29),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
            inactiveTrackColor: kNormalColor,
          ),
          child: Slider(
            value: height.toDouble(),
            min: 120.0,
            max: 220.0,
            onChanged: onSliderChanged,
          ),
        )
      ],
    );
  }
}
