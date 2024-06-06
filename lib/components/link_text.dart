import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';

class LinkText extends StatelessWidget {
  const LinkText(
      {super.key,
        required this.text,
        required this.onPress});

  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onPress(),
        child:
        Text(text, style: linkTextStyle));
  }
}
