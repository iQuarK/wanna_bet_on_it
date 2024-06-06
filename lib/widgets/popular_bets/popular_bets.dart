import 'dart:math';

import 'package:flutter/material.dart';
import 'package:swipe_cards/draggable_card.dart';

import 'package:swipe_cards/swipe_cards.dart';

import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/components/title_section.dart';
import 'package:wanna_bet_on_it/data/bet/bet_json.dart';
import 'package:wanna_bet_on_it/widgets/popular_bets/popular_bets_item.dart';

class Content {
  String text;
  Color color;
  Content(this.text, this.color);
}

class PopularBets extends StatefulWidget {
  const PopularBets({
    super.key,
  });

  @override
  State<PopularBets> createState() => _PopularBetsState();
}

class _PopularBetsState extends State<PopularBets> {
  List<Bet> _bets = <Bet>[];
  final List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  bool _finished = false;

  final List<String> _names = [
    "Red",
    "Blue",
    "Green",
    "Yellow",
    "Orange",
    "Grey",
    "Purple",
    "Pink"
  ];
  final List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.grey,
    Colors.purple,
    Colors.pink
  ];

  @override
  void initState() {
    _getData().then((bets) {
      for (int i = 0; i < bets.length; i++) {
        _swipeItems.add(SwipeItem(
            content: PopularBetsItem(
                bet: bets[i]), // Content(_names[i], _colors[i]),
            likeAction: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Liked ${_names[i]}"),
                duration: const Duration(milliseconds: 500),
              ));
            },
            nopeAction: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Nope ${_names[i]}"),
                duration: const Duration(milliseconds: 500),
              ));
            },
            superlikeAction: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Superliked ${_names[i]}"),
                duration: const Duration(milliseconds: 500),
              ));
            },
            onSlideUpdate: (SlideRegion? region) async {
              print("Region $region");
            }));
      }

      _matchEngine = MatchEngine(swipeItems: _swipeItems);
    }).catchError((error, stackTrace) {
      print("Error: $error");
    });

    super.initState();
  }

  Future<List<Bet>> _getData() async {
    BetJson betJson = BetJson();
    List<Bet> bets = await betJson.getPopularBets();
    setState(() => _bets = bets);
    return bets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TitleSection(title: "Popular Bets"),
            Stack(
                children: _finished || _bets.isEmpty
                    ? [
                        SizedBox(
                            height: 600.0,
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(_finished
                                    ? "No more bets."
                                    : "There are no popular bets yet.")))
                      ]
                    : [
                        SizedBox(
                          height:
                              600.0, //MediaQuery.of(context).size.height - kToolbarHeight,
                          child: SwipeCards(
                            matchEngine: _matchEngine!,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  alignment: Alignment.center,
                                  child: _swipeItems[index].content);
                            },
                            onStackFinished: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Stack Finished"),
                                duration: Duration(milliseconds: 500),
                              ));
                              setState(() => _finished = true);
                            },
                            itemChanged: (SwipeItem item, int index) {
                              print("item index: $index");
                            },
                            leftSwipeAllowed: true,
                            rightSwipeAllowed: true,
                            upSwipeAllowed: false,
                            fillSpace: true,
                            likeTag: Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green)),
                              child: const Text('Like'),
                            ),
                            nopeTag: Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red)),
                              child: const Text('Nope'),
                            ),
                            superLikeTag: Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange)),
                              child: const Text('Super Like'),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.red, width: 2)),
                                child: GestureDetector(
                                    onTap: () {
                                      _matchEngine!.currentItem?.nope();
                                    },
                                    child: const Text(
                                      "NOPE",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )),
                        ),
                        Positioned.fill(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.green, width: 2)),
                                child: GestureDetector(
                                  onTap: () {
                                    _matchEngine!.currentItem?.like();
                                  },
                                  child: const Text(
                                    "WATCH",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        )
                      ])
          ]),
    );
  }
}
