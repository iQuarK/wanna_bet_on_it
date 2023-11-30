import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';

class FormFieldInput extends StatelessWidget {
  const FormFieldInput({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          label,
          style: inputLabelStyle,
        ),
        TextField(
          decoration: textFieldDecoration,
        )
      ]),
    );
  }
}
