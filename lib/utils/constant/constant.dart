import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xff0062ff);
const kPrimaryColor2 = Color.fromRGBO(0,98,255,1);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);


class NetworkConstants{
  //urls
  static const BASE_URL = "https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=";

  //header parameters
  static const ACCEPT = "Accept";
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
  static const DEVICE_COOKIE = "budid";


  //End Urls
  static const TRENDING_SELLER = "trending_seller";

}
