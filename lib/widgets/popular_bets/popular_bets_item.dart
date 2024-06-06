import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';

class PopularBetsItem extends StatefulWidget {
  const PopularBetsItem({
    required this.bet,
    super.key,
  });

  final Bet bet;

  @override
  State<PopularBetsItem> createState() {
    return _PopularBetsItemState();
  }
}

class _PopularBetsItemState extends State<PopularBetsItem> {
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
                  image: NetworkImage(widget.bet.cover), fit: BoxFit.cover),
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
                      Text(widget.bet.category.name,
                          style:
                             const TextStyle(color: Colors.white, fontSize: 15.0)),
                      Text(widget.bet.name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 50.0)),
                    ]))));
  }
}
