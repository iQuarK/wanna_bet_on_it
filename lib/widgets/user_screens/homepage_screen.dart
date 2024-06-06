import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/widgets/categories/categories_list.dart';
import 'package:wanna_bet_on_it/widgets/friends_bets/friends_bets_list.dart';
import 'package:wanna_bet_on_it/widgets/location_based_bets/location_based_bets.dart';
import 'package:wanna_bet_on_it/widgets/popular_bets/popular_bets.dart';
import 'package:wanna_bet_on_it/widgets/trending_bets/trending_bets.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({
    super.key,
  });

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Expanded(
          child: SingleChildScrollView(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TrendingBets(),
          CategoriesList(),
          PopularBets(),
          FriendsBetsList(),
          LocationBasedBets(),
        ],
      )))
    ]);
  }
}
