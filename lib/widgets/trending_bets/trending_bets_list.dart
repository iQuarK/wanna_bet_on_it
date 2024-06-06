import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/widgets/trending_bets/trending_bets_item.dart';

class TrendingBetsList extends StatelessWidget {
  final List<Bet> bets;

  const TrendingBetsList({super.key, required this.bets});

  List<Widget> getItems(double width) {
    return bets.map((bet) => TrendingBetsItem(bet: bet)).toList();
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
        items: getItems(width));
  }
}
