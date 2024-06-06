import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/components/bet_item/bet_item_past.dart';
import 'package:wanna_bet_on_it/components/bet_item/bet_item_watched.dart';
import 'package:wanna_bet_on_it/components/you_have_no_bets.dart';
import 'package:wanna_bet_on_it/components/bet_item/bet_item_live.dart';

enum MyBetsType { live, watched, past }

class MyBetsList extends StatefulWidget {
  const MyBetsList(
      {super.key, required this.bets, this.myBetsType = MyBetsType.live});

  final List<Bet> bets;
  final MyBetsType myBetsType;

  @override
  State<MyBetsList> createState() => _MyBetsListState();
}

class _MyBetsListState extends State<MyBetsList> {
  @override
  void initState() {
    super.initState();
  }

  Widget getBetItem(Bet bet) {
    switch(widget.myBetsType) {
      case MyBetsType.watched:
        return BetItemWatched(bet: bet,);
      case MyBetsType.past:
        return BetItemPast(bet: bet,);
      default:
        return BetItemLive(bet: bet,);
    }
  }

  Widget showBets() {
    if (widget.bets.isNotEmpty) {
      return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: widget.bets
                .map((bet) => getBetItem(bet))
                .toList(),
          ));
    }
    return const YouHaveNoBets(message: "You have no Live Bets");
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: showBets());
  }
}
