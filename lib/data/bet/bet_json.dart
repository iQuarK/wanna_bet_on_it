import 'dart:convert';
import 'package:intl/intl.dart';

import 'package:flutter/services.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/classes/punter.dart';
import 'package:wanna_bet_on_it/data/bet/i_bet.dart';

import 'package:wanna_bet_on_it/classes/category.dart';

class BetJson implements IBet {
  @override
  Future<List<Bet>> getBets() async {
    final String response =
        await rootBundle.loadString('assets/data/bets.json');
    try {
      var data = await json.decode(response);
      return _formatBets(data["bets"]);
    } catch (error) {
      print("Error getting bets: $error");
      return <Bet>[];
    }
  }

  @override
  Future<List<Bet>> getTrendingBets() async {
    final String response =
        await rootBundle.loadString('assets/data/bets.json');
    try {
      var data = await json.decode(response);
      print("data: $data");
      return _formatBets(data["trending_bets"]);
    } catch (error) {
      print("Error getting trending bets: $error");
      return <Bet>[];
    }
  }

  @override
  Future<List<Bet>> getPopularBets() async {
    final String response =
        await rootBundle.loadString('assets/data/bets.json');
    try {
      var data = await json.decode(response);
      print("data: $data");
      return _formatBets(data["popular_bets"]);
    } catch (error) {
      print("Error getting popular bets: $error");
      return <Bet>[];
    }
  }

  @override
  Future<List<Bet>> getFriendsBets() async {
    final String response =
        await rootBundle.loadString('assets/data/bets.json');
    try {
      var data = await json.decode(response);
      return _formatBets(data["friends_bets"]);
    } catch (error) {
      print("Error getting friends bets: $error");
      return <Bet>[];
    }
  }

  @override
  Future<List<Bet>> getMyBets() async {
    final String response =
    await rootBundle.loadString('assets/data/bets.json');
    try {
      var data = await json.decode(response);
      return _formatBets(data["my_bets"]);
    } catch (error) {
      print("Error getting friends bets: $error");
      return <Bet>[];
    }
  }

  @override
  Future<List<Bet>> getLiveBets() async {
    final String response =
    await rootBundle.loadString('assets/data/bets.json');
    try {
      var data = await json.decode(response);
      return _formatBets(data["my_bets"]);
    } catch (error) {
      print("Error getting live bets: $error");
      return <Bet>[];
    }
  }

  @override
  Future<List<Bet>> getWatchedBets() async {
    final String response =
    await rootBundle.loadString('assets/data/bets.json');
    try {
      var data = await json.decode(response);
      return _formatBets(data["empty_bets"]);
    } catch (error) {
      print("Error getting watched bets: $error");
      return <Bet>[];
    }
  }

  @override
  Future<List<Bet>> getPastBets() async {
    final String response =
    await rootBundle.loadString('assets/data/bets.json');
    try {
      var data = await json.decode(response);
      return _formatBets(data["popular_bets"]);
    } catch (error) {
      print("Error getting past bets: $error");
      return <Bet>[];
    }
  }

  List<Bet> _formatBets(bets) {
    return bets
        .map<Bet>((bet) => Bet(
            bet['id'],
            bet['name'],
            _formatPunters(bet['punters']),
            bet['amount'],
            bet['cover'],
            _formatCategory(bet['category']),
            DateTime.parse(bet["start_date"]),
            DateTime.parse(bet["end_date"])))
        .toList();
  }

  Category _formatCategory(category) {
    return Category(category['id'], category['name'], category['icon'],
        category['open_bets']);
  }

  List<Punter> _formatPunters(punters) {
    return punters
        .map<Punter>(
            (punter) => Punter(punter['id'], punter['name'], punter['avatar']))
        .toList();
  }
}
