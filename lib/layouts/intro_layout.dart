import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/components/bottom_button.dart';
import 'package:wanna_bet_on_it/layouts/app_bar_layout.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';

class IntroLayout extends StatelessWidget {
  const IntroLayout({
    super.key,
    required this.child,
    required this.title,
    required this.bottomButtonOnPress,
    this.bottomButtonText = ''
  });

  final Widget child;
  final String bottomButtonText;
  final Function bottomButtonOnPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return  AppBarLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const LinearProgressIndicator(value: 0.3),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    right: 24.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50.0,
                          bottom: 40.0,
                        ),
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: headerStyle,
                        ),
                      ),
                      child
                    ],
                  ),
                ),
              ),
            ),
            BottomButton(
              text: bottomButtonText,
              onPressed: bottomButtonOnPress,
            )
          ],
        ));
  }
}
