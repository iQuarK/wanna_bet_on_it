import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/layouts/wide_intro_layout.dart';

class AccountCreatedSuccessfully extends StatelessWidget {
  const AccountCreatedSuccessfully({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WideIntroLayout(
        title: 'Account created successfully',
        subtitle: '',
        bottomButtonLabel: "Continue",
        bottomButtonAction: () =>
            Navigator.pushNamed(context, "/homepage"),
        child: Container(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/images/tick.png')));
  }
}
