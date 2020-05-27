import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import '../enums.dart';

class GenderCard extends StatelessWidget {
  GenderCard({@required this.gender});

  final Gender gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender == Gender.MALE
              ? FontAwesomeIcons.male
              : FontAwesomeIcons.female,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender.toString().split('.')[1],
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
