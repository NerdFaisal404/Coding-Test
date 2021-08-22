import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle commonLatoTextStyle({Color? color, FontWeight? fontWeight, double? size}) =>
    GoogleFonts.lato(
      fontWeight: fontWeight,
      color: color,
      fontSize: size,
    );
