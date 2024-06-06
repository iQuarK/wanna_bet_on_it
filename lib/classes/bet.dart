import 'package:wanna_bet_on_it/classes/punter.dart';

import 'package:wanna_bet_on_it/classes/category.dart';

class Bet {
  int id;
  String name;
  List<Punter> punters;
  double amount;
  String cover;
  Category category;
  DateTime startDate;
  DateTime endDate;
  Bet(this.id, this.name, this.punters, this.amount, this.cover, this.category, this.startDate, this.endDate);
}