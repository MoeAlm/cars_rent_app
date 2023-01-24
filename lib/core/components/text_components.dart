import 'package:flutter/material.dart';

Widget buildText({required String text, required double fontSize, FontWeight? fontWeight, Color? color}) {
  return Text(
    text,
    style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      color: color,
    ),
  );
}