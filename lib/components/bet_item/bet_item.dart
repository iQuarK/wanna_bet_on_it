import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/data/bet/bet_json.dart';
import 'package:wanna_bet_on_it/widgets/punters_marquee/punters_marquee_item.dart';

class BetItem extends StatefulWidget {
  const BetItem({super.key, required this.bet, required this.subtext});

  final Bet bet;
  final String subtext;

  @override
  State<BetItem> createState() => _BetItemState();
}

class _BetItemState extends State<BetItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.pushNamed(context, "/activity_bet"),
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(15.0),
          decoration: const BoxDecoration(
            border: Border(
              bottom:
                  BorderSide(width: 1.5, color: Color.fromRGBO(0, 0, 0, 0.1)),
            ),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.bet.name, style: betItemNameTextStyle),
                Text(widget.subtext)
              ],
            )),
            Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: PuntersMarqueeItem(
                    bet: widget.bet, onPressed: () => {print('clicked')})),
          ]),
        ));
  }
}
