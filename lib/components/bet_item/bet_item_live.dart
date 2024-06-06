import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/components/bet_item/bet_item.dart';

class BetItemLive extends StatefulWidget {
  const BetItemLive({super.key, required this.bet, });

  final Bet bet;

  @override
  State<BetItemLive> createState() => _BetItemLiveState();
}

class _BetItemLiveState extends State<BetItemLive> {
  @override
  void initState() {
    super.initState();
  }

  String _printDuration(Duration duration) {
    String negativeSign = duration.isNegative ? '-' : '';
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitDays = twoDigits(duration.inDays);
    String twoDigitHours = twoDigits(duration.inHours.remainder(24).abs());
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60).abs());
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60).abs());
    return "$negativeSign$twoDigitDays:$twoDigitHours:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    Duration ending = widget.bet.endDate.difference(now);

    return BetItem(bet: widget.bet, subtext: "ENDING ${_printDuration(ending)}");
  }
}
