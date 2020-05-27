import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  ContentCard({
    @required this.backgroundColor,
    @required this.childCard,
    this.onTap,
  });

  final Color backgroundColor;
  final Widget childCard;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
