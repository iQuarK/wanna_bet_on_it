import 'package:wanna_bet_on_it/classes/punter.dart';

class Bet {
  int id;
  String name;
  List<Punter> punters;
  double amount;
  String cover;
  Bet(this.id, this.name, this.punters, this.amount, this.cover);
}