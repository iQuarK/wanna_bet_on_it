import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/classes/category.dart';
import 'package:wanna_bet_on_it/data/category/category_json.dart';
import 'package:wanna_bet_on_it/widgets/categories/categories_item.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  List<Category> _categories = [];

  @override
  void initState() {
    super.initState();

    _getData().catchError((error, stackTrace) {
      print("Error: $error");
    });
  }

  _getData() async {
    CategoryJson categoryJson = CategoryJson();
    List<Category> categories = await categoryJson.getCategories();
    setState(() => _categories = categories);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> categories = _categories
        .map((category) => CategoriesItem(
              category: category,
            ))
        .toList();

    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: categories,
        ));
  }
}
