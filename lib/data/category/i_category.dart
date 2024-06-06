import 'package:wanna_bet_on_it/classes/category.dart';

abstract class ICategory {
  Future<List<Category>> getCategories();
}