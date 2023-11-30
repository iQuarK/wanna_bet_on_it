import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/layouts/home_layout.dart';
import 'package:wanna_bet_on_it/widgets/trending_bets/trending_bets.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeLayout(
        child: Column(children: [
          Expanded(child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const TrendingBets(),

                Container(height: 50, color: Colors.purple, child: const Text('ironman')),
                Container(color: Colors.amber, child: const Text('ironman')),
                Container(color: Colors.purple, child: const Text('ironman')),
                Container(color: Colors.cyan, child: const Text('ironman')),
              ],
            )))])
        );
  }
}
