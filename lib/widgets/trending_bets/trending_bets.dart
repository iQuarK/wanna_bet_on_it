import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/widgets/punters_marquee/punters_marquee.dart';
import 'package:wanna_bet_on_it/widgets/trending_bets/trending_bets_list.dart';

class TrendingBets extends StatefulWidget {
  const TrendingBets({
    super.key,
  });

  @override
  State<TrendingBets> createState() => _TrendingBetsState();
}

class _TrendingBetsState extends State<TrendingBets> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [TrendingBetsList(), PuntersMarquee()],
    );
  }
}
