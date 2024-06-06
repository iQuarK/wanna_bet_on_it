import 'package:flutter/material.dart';
import 'package:wanna_bet_on_it/styles/colors.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({
    super.key,
    required this.children,
    this.title = '',
  });

  final List<Widget> children;
  final String title;

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.children[_selectedIndex],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('creating bet');
        },
        foregroundColor: Colors.white,
        backgroundColor: primaryCTAColor,
        label: const Text('Create A Bet', style: TextStyle(fontSize: 17.0)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
                image: AssetImage(
                    'assets/images/icons/bottom_menu/feed_inactive.png')),
            activeIcon: Image(
                image: AssetImage(
                    'assets/images/icons/bottom_menu/feed_active.png')),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Image(
                image: AssetImage(
                    'assets/images/icons/bottom_menu/my_bets_inactive.png')),
            activeIcon: Image(
                image: AssetImage(
                    'assets/images/icons/bottom_menu/my_bets_active.png')),
            label: 'My Bets',
          ),
          BottomNavigationBarItem(
            icon: Image(
                image: AssetImage(
                    'assets/images/icons/bottom_menu/search_inactive.png')),
            activeIcon: Image(
                image: AssetImage(
                    'assets/images/icons/bottom_menu/search_active.png')),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image(
                image: AssetImage(
                    'assets/images/icons/bottom_menu/friends_inactive.png')),
            activeIcon: Image(
                image: AssetImage(
                    'assets/images/icons/bottom_menu/friends_active.png')),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Image(
                image: AssetImage(
                    'assets/images/icons/bottom_menu/settings_inactive.png')),
            activeIcon: Image(
                image: AssetImage(
                    'assets/images/icons/bottom_menu/settings_active.png')),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: menuBackgroundColor,
        selectedItemColor: menuSelectedColor,
        unselectedItemColor: menuUnselectedColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
