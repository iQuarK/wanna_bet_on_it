import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/data/bet/bet_json.dart';
import 'package:wanna_bet_on_it/widgets/punters_marquee/punters_marquee_item.dart';

class YouHaveNoBets extends StatelessWidget {
  const YouHaveNoBets({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          children: [
            RichText(text: const TextSpan(text: "😫", style: TextStyle(fontSize: 40))),
            Text(
              message,
              style: subHeaderStyle,
            )
          ],
        ));
  }
}
