import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/classes/punter.dart';
import 'package:wanna_bet_on_it/widgets/punters_marquee/punters_marquee_item.dart';

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
  List<Bet> bets = <Bet>[
    Bet(
        0,
        'Anthony Joshua to win upcoming fight within rounds 1-4',
        [
          Punter(0, "Punter 1", 'https://placebeard.it/101/101'),
          Punter(1, "Punter 2", 'https://placebeard.it/100/100')
        ],
        10.0,
        ''),
    Bet(
        1,
        'John Snow to rule the seven kingdoms of Westeros from the Iron Throne at the end of the GOT series',
        [
          Punter(0, "Punter 3", 'https://placebeard.it/100/101'),
          Punter(1, "Punter 4", 'https://placebeard.it/101/100')
        ],
        15.0,
        ''),
    Bet(
        2,
        'The third Royal baby to be a girl',
        [
          Punter(0, "Punter 5", 'https://placebeard.it/102/102'),
          Punter(1, "Punter 6", 'https://placebeard.it/100/102')
        ],
        5.0,
        ''),
    Bet(
        3,
        'Spiderman marries Mary Jayne',
        [
          Punter(0, "Punter 7", 'https://placebeard.it/103/103'),
          Punter(1, "Punter 8", 'https://placebeard.it/102/100')
        ],
        20.0,
        ''),
    Bet(
        4,
        'Anakin becomes Vader',
        [
          Punter(0, "Punter 9", 'https://placebeard.it/103/100'),
          Punter(1, "Punter 10", 'https://placebeard.it/100/103')
        ],
        22.0,
        ''),
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (var bet in bets) {
        for (var punter in bet.punters) {
          precacheImage(NetworkImage(punter.avatar), context);
        }
      }
    });
    super.initState();
  }

  List<Widget> getItems() {
    return bets
        .map((bet) =>
          PuntersMarqueeItem(bet: bet, onPressed: () => print("${bet.name} clicked")))
        .toList();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        height: 100.0,
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child:
            ListView(scrollDirection: Axis.horizontal, children: getItems()));
  }
}
