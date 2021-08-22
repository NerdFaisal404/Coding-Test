import 'package:coding_test/utils/common_style.dart';
import 'package:flutter/material.dart';

class CommonTextUtil extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final bool isCentre;

  CommonTextUtil({this.text, this.fontWeight, this.fontSize, this.color, required this.isCentre});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
      textAlign: isCentre ? TextAlign.center : TextAlign.left,
      style: commonLatoTextStyle(
          color: color,
          fontWeight: fontWeight,
          size: fontSize
      ),);
  }
}