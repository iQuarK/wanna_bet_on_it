import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/styles.dart';
import 'package:wanna_bet_on_it/classes/category.dart';
import 'package:wanna_bet_on_it/data/category/category_json.dart';

class CategoriesItem extends StatefulWidget {
  const CategoriesItem({super.key, required this.category});

  final Category category;

  @override
  State<CategoriesItem> createState() => _CategoriesItemState();
}

class _CategoriesItemState extends State<CategoriesItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.5, color: Color.fromRGBO(0, 0, 0, 0.1)),
        ),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 15.0),
          child: Image.asset(
            "assets/images/icons/categories/${widget.category.icon}_outline.png",
            width: 65.0,
            height: 65.0,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.category.name, style: categoryNameTextStyle),
            Text("${widget.category.openBets} open bets",
                style: categoryOpenBetsTextStyle)
          ],
        ))
      ]),
    );
  }
}
