import 'package:flutter/material.dart';

import 'constants.dart';
import 'enums.dart';

import 'content_card.dart';
import 'gender_card.dart';
import 'height_card.dart';
import 'number_content_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender usersGender;
  int height = 170;
  int weight = 55;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ContentCard(
                    onTap: () {
                      setState(() {
                        usersGender = Gender.MALE;
                      });
                    },
                    backgroundColor: usersGender == Gender.MALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard: GenderCard(
                      gender: Gender.MALE,
                    ),
                  ),
                ),
                Expanded(
                  child: ContentCard(
                    onTap: () {
                      setState(() {
                        usersGender = Gender.FEMALE;
                      });
                    },
                    backgroundColor: usersGender == Gender.FEMALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard: GenderCard(
                      gender: Gender.FEMALE,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContentCard(
              backgroundColor: kActiveCardColor,
              childCard: HeightCard(
                height: height,
                onSliderChanged: (value) {
                  setState(() {
                    height = value.round();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ContentCard(
                    backgroundColor: kActiveCardColor,
                    childCard: NumberContentCard(
                        contentLabel: 'WEIGHT',
                        contentUnit: 'kg',
                        contentNumber: weight,
                        onMinusButtonPressed: () {
                          setState(() {
                            weight--;
                          });
                        },
                        onPlusButtonPressed: () {
                          setState(() {
                            weight++;
                          });
                        }),
                  ),
                ),
                Expanded(
                  child: ContentCard(
                    backgroundColor: kActiveCardColor,
                    childCard: NumberContentCard(
                        contentLabel: 'AGE',
                        contentUnit: '',
                        contentNumber: age,
                        onMinusButtonPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                        onPlusButtonPressed: () {
                          setState(() {
                            age++;
                          });
                        }),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kAccentColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
