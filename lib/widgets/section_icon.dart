import 'package:flutter/material.dart';

const labelStyle = TextStyle(
  fontSize: 18,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

class SectionIcon extends StatelessWidget {
  SectionIcon({this.icon, this.label});
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: labelStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
