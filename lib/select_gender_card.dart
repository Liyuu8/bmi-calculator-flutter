import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class SelectGenderCard extends StatelessWidget {
  SelectGenderCard({
    @required this.gender,
  });

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
          style: labelTextStyle,
        )
      ],
    );
  }
}
