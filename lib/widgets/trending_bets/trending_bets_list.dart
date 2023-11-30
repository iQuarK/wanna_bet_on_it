import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/widgets/trending_bets/trending_bets_item.dart';

class TrendingBetsList extends StatefulWidget {
  const TrendingBetsList({
    super.key,
  });

  @override
  State<TrendingBetsList> createState() {
    return _TrendingBetsListState();
  }
}

class _TrendingBetsListState extends State<TrendingBetsList> {
  List<Bet> trends = <Bet>[
    Bet(0, 'Anthony Joshua to win upcoming fight within rounds 1-4', [], 0, "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"),
    Bet(0, 'John Snow to rule the seven kingdoms of Westeros from the Iron Throne at the end of the GOT series', [], 0, "https://placebeard.it/500/500"),
    Bet(0, 'The third Royal baby to be a girl', [], 0, "https://placebeard.it/400/500"),
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (var trend in trends) {
        precacheImage(NetworkImage(trend.cover), context);
      }
    });
    super.initState();
  }

  List<Widget> getItems(double width) {
    return trends.map((bet) => TrendingBetsItem(bet: bet)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 2 / 3;
    final double width = MediaQuery.of(context).size.width;
    return CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: false,
          enlargeFactor: 2,
          height: height,
          aspectRatio: 16 / 9,
          viewportFraction: 1.0,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: getItems(width)
            );
  }
}
