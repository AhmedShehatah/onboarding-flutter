import 'package:flutter/material.dart';
import 'package:onboarding/onboarding/widgets/base_circular_background.dart';
import 'package:onboarding/utils.dart';

class RoadWidget extends StatelessWidget {
  const RoadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.screenWidth * .8,
      height: 0.screenHeight * .4,
      child: Stack(
        children: [
          BaseCicularbackground(color: Colors.lightGreen.shade100),
          Positioned(
            bottom: 60.height,
            right: 10.width,
            child: Container(
              color: Colors.amber,
              width: 150.width,
              height: 150.height,
              child: const Center(child: Text('meine')),
            ),
          ),
          Positioned(
            top: 30.height,
            right: 25.width,
            child: const CircleAvatar(
              backgroundColor: Colors.green,
              radius: 25,
              child: Text('+2'),
            ),
          ),
          Positioned(
            top: 30.height,
            child: Container(
              color: Colors.blueAccent,
              width: 80.width,
              height: 80.width,
              child: const Center(child: Text('formeln')),
            ),
          ),
        ],
      ),
    );
  }
}
