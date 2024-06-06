import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/components/bet_item/bet_item.dart';

class BetItemPast extends StatefulWidget {
  const BetItemPast({super.key, required this.bet, });

  final Bet bet;

  @override
  State<BetItemPast> createState() => _BetItemPastState();
}

class _BetItemPastState extends State<BetItemPast> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BetItem(bet: widget.bet, subtext: "WON/LOST");
  }
}
