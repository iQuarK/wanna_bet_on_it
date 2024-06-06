import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/components/bet_item/bet_item_live.dart';
import 'package:wanna_bet_on_it/components/link_text.dart';
import 'package:wanna_bet_on_it/components/title_section.dart';
import 'package:wanna_bet_on_it/data/bet/bet_json.dart';


class FriendsBetsList extends StatefulWidget {
  const FriendsBetsList({super.key});

  @override
  State<FriendsBetsList> createState() => _FriendsBetsListState();
}

class _FriendsBetsListState extends State<FriendsBetsList> {
  List<Bet> _bets = [];

  @override
  void initState() {
    super.initState();

    _getData().catchError((error, stackTrace) {
      print("Error: $error");
    });
  }

  Future<List<Bet>> _getData() async {
    BetJson betJson = BetJson();
    List<Bet> bets = await betJson.getFriendsBets();
    setState(() => _bets = bets);
    return bets;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> bets = _bets
        .map((bet) => BetItemLive(
              bet: bet,
            ))
        .toList();

    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleSection(title: "Friends Bets"),
                  LinkText(
                      text: "Show All", onPress: () => print("Show All pressed")),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: bets,
            ),
          ],
        ));
  }
}
