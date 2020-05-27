import 'package:flutter/material.dart';

import '../constants.dart';
import '../enums.dart';

import '../calculator_brain.dart';

import '../components/content_card.dart';
import '../components/gender_card.dart';
import '../components/height_card.dart';
import '../components/number_content_card.dart';
import '../components/bottom_button.dart';

import 'results_page.dart';

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
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(
                height: height,
                weight: weight,
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.getResult(),
                    bmiResultText: calc.getResultText(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
