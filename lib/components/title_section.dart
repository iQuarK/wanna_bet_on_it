import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection(
      {super.key,
      required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 25),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
