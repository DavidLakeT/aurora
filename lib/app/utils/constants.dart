library app_constants;

import 'package:flutter/cupertino.dart';

const kBorderRadius = 20.0;
const kSpacing = 20.0;

const kFontColorPallets = [
  Color.fromRGBO(255, 255, 255, 1),
  Color.fromRGBO(210, 210, 210, 1),
  Color.fromRGBO(170, 170, 170, 1),
];

const kNotifColor = Color.fromRGBO(74, 177, 120, 1);

class Font {
  static const poppins = "Poppins";
}

class ApiConstants {
  static String baseUrl = "https://newsapi.org/v2/";
  static String everythingEndpoint = '/everything';
  static String topHeadlinesEndpoint = "/top-headlines";
}