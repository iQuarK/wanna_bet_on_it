import 'package:wanna_bet_on_it/classes/bet.dart';

abstract class IBet {
  Future<List<Bet>> getBets();
  Future<List<Bet>> getTrendingBets();
  Future<List<Bet>> getPopularBets();
  Future<List<Bet>> getFriendsBets();
  Future<List<Bet>> getMyBets();
  Future<List<Bet>> getLiveBets();
  Future<List<Bet>> getWatchedBets();
  Future<List<Bet>> getPastBets();
}
