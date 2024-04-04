import 'package:flutter/material.dart';

class BaseCicularbackground extends StatelessWidget {
  const BaseCicularbackground({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 150,
    );
  }
}
