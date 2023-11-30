import 'package:flutter/material.dart';

class AppBarLayout extends StatelessWidget {
  const AppBarLayout({
    super.key,
    required this.child,
    this.title = '',
  });
  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: Text(title),
        ),
        body: Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: child));
  }
}
