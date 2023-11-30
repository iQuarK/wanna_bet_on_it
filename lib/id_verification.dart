import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/layouts/wide_intro_layout.dart';

class IDVerification extends StatelessWidget {
  const IDVerification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WideIntroLayout(
        title: 'ID verification',
        subtitle: '',
        bottomButtonLabel: "Verify",
        bottomButtonAction: () =>
            Navigator.pushNamed(context, "/account_created_successfully"),
        child: Container(
            alignment: Alignment.topCenter,
            child: Column(children: [
              Image.asset('assets/images/id_verification.png'),
              const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 45.0, right: 45.0),
                  child: Text(
                    'To create your Wannabetonit account, we need to scan your government issued ID documents',
                    textAlign: TextAlign.center,
                  )),
            ])));
  }
}
