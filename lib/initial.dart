import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/colors.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';

import 'components/bottom_button.dart';

class Initial extends StatelessWidget {
  const Initial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: initialBackgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Center(
                    child: Image.asset("assets/images/initial_logo.png"))),
            Container(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  BottomButton(
                    label: "Log in",
                    textStyle: initialButtonTextStyle,
                    onPressed: () => {},
                  ),
                  BottomButton(
                    label: "Sign up",
                    primary: false,
                    onPressed: () => Navigator.pushNamed(
                        context, "/whats_your_email_address"),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
