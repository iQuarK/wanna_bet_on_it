import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/components/wide_form_field_input.dart';
import 'package:wanna_bet_on_it/layouts/wide_intro_layout.dart';

class WhatsYourEmailAddress extends StatelessWidget {
  const WhatsYourEmailAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WideIntroLayout(
      title: 'What\'s your email address?',
      subtitle: 'So we can get in touch with you.',
      bottomButtonAction: () =>
          Navigator.pushNamed(context, "/whats_your_password"),
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
