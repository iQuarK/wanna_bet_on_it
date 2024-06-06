import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/classes/punter.dart';
import 'package:wanna_bet_on_it/widgets/punters_marquee/punters_marquee_item.dart';

import '../../data/bet/bet_json.dart';

class PuntersMarquee extends StatefulWidget {
  const PuntersMarquee({
    super.key,
  });

  @override
  State<PuntersMarquee> createState() {
    return _PuntersMarqueeState();
  }
}

class _PuntersMarqueeState extends State<PuntersMarquee> {
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
    List<Bet> bets = await betJson.getBets();
    print("GetDAta ${bets}");
    setState(() => _bets = bets);
  }

  List<Widget> getItems() {
    return _bets
        .map((bet) =>
          PuntersMarqueeItem(bet: bet, onPressed: () => print("${bet.name} clicked")))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    print('Rendering punters ${_bets}');
    return Container(
        height: 100.0,
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child:
            ListView(scrollDirection: Axis.horizontal, children: getItems()));
  }
}
