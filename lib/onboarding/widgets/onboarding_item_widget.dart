import 'package:flutter/material.dart';

class OnBoardingItemWidget extends StatelessWidget {
  const OnBoardingItemWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.desc});

  final String title;
  final Widget image;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          image,
          Text(
            desc,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
