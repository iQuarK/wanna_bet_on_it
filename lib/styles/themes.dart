import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/colors.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';

var appBarTheme = AppBarTheme(
  color: primaryMainColor,
  titleTextStyle: const TextStyle(color: Colors.white),
  iconTheme: IconThemeData(color: primaryCTAColor),
);

var progressIndicatorTheme =
    ProgressIndicatorThemeData(color: primaryCTAColor, linearMinHeight: 4.0);

var filledButtonTheme = FilledButtonThemeData(
  style: primaryButtonStyle
);
