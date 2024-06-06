import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';

import 'package:wanna_bet_on_it/styles/colors.dart';

class PuntersMarqueeItem extends StatefulWidget {
  const PuntersMarqueeItem(
      {super.key, required this.bet, required this.onPressed});

  final Function onPressed;
  final Bet bet;

  @override
  State<PuntersMarqueeItem> createState() {
    return _PuntersMarqueeItemState();
  }
}

class _PuntersMarqueeItemState extends State<PuntersMarqueeItem> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (var punter in widget.bet.punters) {
        precacheImage(NetworkImage(punter.avatar), context);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => widget.onPressed(),
        child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SizedBox(
              width: 110,
              child: Stack(alignment: Alignment.center, children: [
                Positioned(
                    left: 45.0,
                    top: 0,
                    child: Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30.0)),
                          border:
                              Border.all(color: borderSecondPunter, width: 2),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image.network(widget.bet.punters[1].avatar,
                                width: 55.0,
                                height: 55.0,
                                fit: BoxFit.cover)))),
                Positioned(
                    left: 0.0,
                    top: 0,
                    child: Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30.0)),
                          border:
                              Border.all(color: borderFirstPunter, width: 2),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image.network(widget.bet.punters[0].avatar,
                                width: 55.0,
                                height: 55.0,
                                fit: BoxFit.cover)))),
                Positioned(
                  left: (110/2)/2,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 2.0, right: 10.0, bottom: 2.0),
                    color: primaryCTAColor,
                    child: Text(
                      '£${widget.bet.amount}',
                      textAlign: TextAlign.center,
                      style:
                      const TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                  ),
                ),
              ]),
            )));
  }
}
