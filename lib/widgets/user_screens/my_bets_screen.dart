import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/colors.dart';
import 'package:wanna_bet_on_it/widgets/my_bets/my_bets_list.dart';

import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/data/bet/bet_json.dart';

class MyBetsScreen extends StatefulWidget {
  const MyBetsScreen({
    super.key,
  });

  @override
  State<MyBetsScreen> createState() => _MyBetsScreenState();
}

class _MyBetsScreenState extends State<MyBetsScreen> {
  List<Bet> _liveBets = <Bet>[];
  List<Bet> _watchedBets = <Bet>[];
  List<Bet> _pastBets = <Bet>[];

  @override
  void initState() {
    super.initState();

    _getData().catchError((error, stackTrace) {
      print("Error: $error");
    });
  }

  Future<void> _getData() async {
    BetJson betJson = BetJson();
    betJson.getLiveBets().then((List<Bet> bets) => setState(() => _liveBets = bets));
    betJson.getWatchedBets().then((List<Bet> bets) => setState(() => _watchedBets = bets));
    betJson.getPastBets().then((List<Bet> bets) => setState(() => _pastBets = bets));
  }

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Live'),
    Tab(text: 'Watched'),
    Tab(text: 'Past'),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> contents = [
      MyBetsList(bets: _liveBets, myBetsType: MyBetsType.live),
      MyBetsList(bets: _watchedBets, myBetsType: MyBetsType.watched),
      MyBetsList(bets: _pastBets, myBetsType: MyBetsType.past),
    ];

    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("My Bets"),
              bottom: PreferredSize(
                preferredSize: const Size(double.infinity, kToolbarHeight),
                child: Container(
                  color: const  Color.fromRGBO(255, 255, 255, 1),
                  child: TabBar(labelColor: primaryTabColor,
                    dividerColor: const  Color.fromRGBO(218, 225, 235, 0.9),
                    indicatorColor: primaryTabColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 4,
                    labelStyle:
                      const TextStyle(
                          color: Color.fromRGBO(178, 178, 178, 1)
                      ), tabs: myTabs,),
                ),
              ),
              ),
            body: TabBarView(
              children: contents,
            )));
  }
}
