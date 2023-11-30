import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';

class WideFormFieldInput extends StatelessWidget {
  const WideFormFieldInput({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        TextField(textAlign: TextAlign.center,
          decoration: wideTextFieldDecoration,
        )
      ]),
    );
  }
}
