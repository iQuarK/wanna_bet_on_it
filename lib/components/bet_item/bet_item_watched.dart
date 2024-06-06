import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/components/bet_item/bet_item.dart';

class BetItemWatched extends StatefulWidget {
  const BetItemWatched({super.key, required this.bet, });

  final Bet bet;

  @override
  State<BetItemWatched> createState() => _BetItemWatchedState();
}

class _BetItemWatchedState extends State<BetItemWatched> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BetItem(bet: widget.bet, subtext: "120k people betting on this");
  }
}
