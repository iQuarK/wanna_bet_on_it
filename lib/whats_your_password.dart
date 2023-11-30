import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/components/wide_form_field_input.dart';
import 'package:wanna_bet_on_it/layouts/wide_intro_layout.dart';

class WhatsYourPassword extends StatelessWidget {
  const WhatsYourPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WideIntroLayout(
      title: 'What\'s your Password?',
      subtitle: 'Your Password must have at least 8 characters.',
      bottomButtonText: "Send me a temporary password to my email",
      bottomButtonAction: () =>
          Navigator.pushNamed(context, "/add_your_address"),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          WideFormFieldInput(label: 'House / apartment / flat number'),
        ],
      ),
    );
  }
}
