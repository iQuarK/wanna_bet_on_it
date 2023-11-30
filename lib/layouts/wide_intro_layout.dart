import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/components/bottom_button.dart';
import 'package:wanna_bet_on_it/layouts/app_bar_layout.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';

class WideIntroLayout extends StatelessWidget {
  const WideIntroLayout({
    super.key,
    required this.child,
    required this.title,
    required this.subtitle,
    required this.bottomButtonAction,
    this.bottomButtonText = '',
    this.bottomButtonLabel = 'Next',
  });

  final Widget child;
  final String bottomButtonText;
  final Function bottomButtonAction;
  final String bottomButtonLabel;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return AppBarLayout(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const LinearProgressIndicator(value: 0.3),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 0.0,
                right: 0.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                    ),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: headerStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 40.0,
                    ),
                    child: Text(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: subheaderStyle,
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
          label: bottomButtonLabel,
          onPressed: bottomButtonAction,
        )
      ],
    ));
  }
}
