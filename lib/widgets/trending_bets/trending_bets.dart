import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/widgets/punters_marquee/punters_marquee.dart';
import 'package:wanna_bet_on_it/widgets/trending_bets/trending_bets_list.dart';

import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/data/bet/bet_json.dart';

class TrendingBets extends StatefulWidget {
  const TrendingBets({
    super.key,
  });

  @override
  State<TrendingBets> createState() => _TrendingBetsState();
}

class _TrendingBetsState extends State<TrendingBets> {
  List<Bet> _bets = <Bet>[];

  @override
  void initState() {
    _getData().catchError((error, stackTrace) {
      print("Error: $error");
    });
    super.initState();
  }

  Future<void> _getData() async {
    BetJson betJson = BetJson();
    List<Bet> bets = await betJson.getTrendingBets();
    setState(() => _bets = bets);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [TrendingBetsList(bets: _bets), const PuntersMarquee()],
    );
  }
}
