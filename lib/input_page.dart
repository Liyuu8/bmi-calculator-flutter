import 'package:flutter/material.dart';

import 'content_card.dart';
import 'select_gender_card.dart';

import 'gender.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender usersGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
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
                        ? activeCardColor
                        : inactiveCardColor,
                    childCard: SelectGenderCard(
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
                        ? activeCardColor
                        : inactiveCardColor,
                    childCard: SelectGenderCard(
                      gender: Gender.FEMALE,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContentCard(
              backgroundColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ContentCard(
                    backgroundColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ContentCard(
                    backgroundColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
