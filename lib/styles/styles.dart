import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/colors.dart';

TextStyle headerStyle = TextStyle(
    color: primaryMainColor, fontSize: 24.0, fontWeight: FontWeight.w700);
TextStyle subHeaderStyle = TextStyle(
    color: subheaderFontColor, fontSize: 14.0, fontWeight: FontWeight.w400);
TextStyle inputLabelStyle = TextStyle(
    color: inputLabelColor, fontSize: 13.0, fontWeight: FontWeight.w600);
InputDecoration textFieldDecoration = InputDecoration(
    fillColor: inputBackgroundColor,
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: primaryCTAColor)),
    border:
        OutlineInputBorder(borderSide: BorderSide(color: inputBorderColor)));

InputDecoration wideTextFieldDecoration = InputDecoration(
    fillColor: wideInputBackgroundColor,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: wideInputBorderColor),
        borderRadius: const BorderRadius.all(Radius.zero)),
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: primaryCTAColor)),
    border: OutlineInputBorder(
        borderSide: BorderSide(color: wideInputBorderColor),
        borderRadius: const BorderRadius.all(Radius.zero)));

ButtonStyle primaryButtonStyle = ButtonStyle(
  backgroundColor:
      MaterialStateProperty.resolveWith((states) => primaryCTAColor),
  foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
  padding:
      MaterialStateProperty.resolveWith((states) => const EdgeInsets.all(16.0)),
  textStyle: MaterialStateProperty.resolveWith(
      (states) => const TextStyle(fontSize: 16.0)),
);

ButtonStyle secondaryButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
  foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
  padding:
      MaterialStateProperty.resolveWith((states) => const EdgeInsets.all(16.0)),
  textStyle: MaterialStateProperty.resolveWith(
      (states) => const TextStyle(fontSize: 16.0)),
);

TextStyle initialButtonTextStyle =
    const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

TextStyle categoryNameTextStyle =
    const TextStyle(fontSize: 17, fontWeight: FontWeight.w400);
TextStyle categoryOpenBetsTextStyle =
    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400);

TextStyle betItemNameTextStyle = const TextStyle(
    fontSize: 28, fontFamily: 'Lato', fontWeight: FontWeight.w700, overflow: TextOverflow.ellipsis);
TextStyle betItemEndingTextStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(181, 181, 181, 1));

TextStyle linkTextStyle = TextStyle(fontSize: 15, color: primaryCTAColor);