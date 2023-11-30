import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';

class TrendingBetsItem extends StatefulWidget {
  const TrendingBetsItem({
    required this.bet,
    super.key,
  });

  final Bet bet;

  @override
  State<TrendingBetsItem> createState() {
    return _TrendingBetsItemState();
  }
}

class _TrendingBetsItemState extends State<TrendingBetsItem> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      precacheImage(NetworkImage(widget.bet.cover), context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTap: () => print("${widget.bet.name} pressed"),
        child: Container(
            width: width,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(widget.bet.cover),
                  fit: BoxFit.cover),
            ),
            child: Container(
                padding:
                const EdgeInsets.only(right: 100, left: 15, bottom: 30),
                decoration: const BoxDecoration(
                    color: Colors.pink,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black45])),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Trending Bets',
                          style: TextStyle(
                              color: Colors.white, fontSize: 15.0)),
                      Text(widget.bet.name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 30.0)),
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: Icon(
                                  Icons.av_timer,
                                  color: Colors.white,
                                )),
                            Text('Ending soon',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.0))
                          ])
                    ]))));
  }
}
