import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/colors.dart';
import 'package:wanna_bet_on_it/classes/punter.dart';

class PunterTicker extends StatelessWidget {
  const PunterTicker(
      {super.key,
        required this.punter,
        this.offset = 0
      });

  final Punter punter;
  final double offset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
                    left: offset,
                    child: Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: const BorderRadius.all(
                              Radius.circular(
                                  30.0)),
                          border:
                          Border.all(color: borderSecondPunter, width: 2),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image.network(punter.avatar,
                                width: 55.0,
                                height: 55.0,
    ))));
  }
}
