import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wanna_bet_on_it/classes/category.dart';
import 'package:wanna_bet_on_it/data/category/i_category.dart';

class CategoryJson implements ICategory {
  @override
  Future<List<Category>> getCategories() async {
    final String response =
        await rootBundle.loadString('assets/data/categories.json');
    try {
      var data = await json.decode(response);
      return data["categories"].map<Category>((category) => Category(category['id'],
          category['name'], category['icon'], category['open_bets'])).toList();
    } catch (error) {
      print('Error getting categories: ${error}');
      return <Category>[];
    }
  }
}
