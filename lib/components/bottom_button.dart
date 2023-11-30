import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key,
      required this.onPressed,
      this.textStyle = const TextStyle(),
      this.text = '',
      this.label = 'Next',
      this.primary = true});

  final Function onPressed;
  final String text;
  final String label;
  final bool primary;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = primary ? primaryButtonStyle : secondaryButtonStyle;

    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
        left: 24.0,
        right: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (text != "")
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16.0)),
            ),
          FilledButton(
              onPressed: () => onPressed(),
              style: buttonStyle,
              child: Text(label, style: textStyle),),
        ],
      ),
    );
  }
}
