import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'dimens.dart';

class AppThemes {
  final lightTheme = ThemeData(
    primaryColor: material_white,
    primaryColorDark: material_black,
    accentColor: material_orange,
    cardColor: white,
    canvasColor: material_white,
    hintColor: black_5,
    textTheme: TextThemes.lightTextTheme,
    disabledColor: light_grey,
    shadowColor: light_grey_white,
    cursorColor: material_orange,

  );

  final darkTheme = ThemeData(
    primaryColor: black,
    primaryColorDark: white,
    accentColor: red,
    cardColor: black,
    canvasColor: black,
    hintColor: light_grey_white,
    textTheme: TextThemes.darkTextTheme,
    disabledColor: light_grey,
    shadowColor: light_grey_white,
    cursorColor: material_orange,
  );
}

class TextThemes {
  static final lightTextTheme = TextTheme(
    headline1: GoogleFonts.lato(
        color: black, fontSize: dp30, fontWeight: FontWeight.bold),
    headline2: GoogleFonts.lato(
        color: black_5, fontSize: dp20, fontWeight: FontWeight.bold),
    headline3: GoogleFonts.lato(
        color: black, fontSize: dp24, fontWeight: FontWeight.bold),
    headline4: GoogleFonts.lato(
        color: black, fontSize: dp16, fontWeight: FontWeight.bold),
    headline5: GoogleFonts.lato(
        color: black, fontSize: dp16, fontWeight: FontWeight.normal),
    headline6: GoogleFonts.lato(color: black, fontSize: dp20),
    subtitle1: GoogleFonts.lato(
      color: black,
      fontSize: dp16, fontWeight: FontWeight.bold
    ),
    subtitle2: GoogleFonts.lato(color: black, fontSize: dp14),
    bodyText1: GoogleFonts.lato(
      color: grey,
      fontSize: dp16,
        fontWeight: FontWeight.w400
    ),
    bodyText2: GoogleFonts.lato(
        color: grey, fontSize: dp14, fontWeight: FontWeight.w400),
    button: GoogleFonts.lato(
        color: black, fontSize: dp20, fontWeight: FontWeight.bold),
  );

  static final darkTextTheme = TextTheme(
    headline1: GoogleFonts.lato(
        color: black, fontSize: dp30, fontWeight: FontWeight.bold),
    headline2: GoogleFonts.lato(
        color: white, fontSize: dp20, fontWeight: FontWeight.bold),
    headline3: GoogleFonts.poppins(
        color: black_5, fontSize: dp24, fontWeight: FontWeight.bold),
    headline4: GoogleFonts.lato(
        color: black, fontSize: dp16, fontWeight: FontWeight.bold),
    headline5: GoogleFonts.lato(
        color: black, fontSize: dp16, fontWeight: FontWeight.normal),
    headline6: GoogleFonts.lato(color: black, fontSize: dp20),
    subtitle1: GoogleFonts.lato(
      color: black,
      fontSize: dp14,
    ),
    subtitle2: GoogleFonts.lato(color: white, fontSize: dp14),
    bodyText1: GoogleFonts.lato(
      color: black_5,
      fontSize: dp16,
    ),
    bodyText2: GoogleFonts.lato(
        color: accent, fontSize: dp16, fontWeight: FontWeight.bold),
    button: GoogleFonts.lato(
        color: white, fontSize: dp20, fontWeight: FontWeight.bold),
  );
}
