import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/layouts/home_layout.dart';
import 'package:wanna_bet_on_it/widgets/user_screens/homepage_screen.dart';
import 'package:wanna_bet_on_it/widgets/user_screens/my_bets_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const HomeLayout(
        children: <Widget>[HomepageScreen(), MyBetsScreen()],
      );
  }
}
