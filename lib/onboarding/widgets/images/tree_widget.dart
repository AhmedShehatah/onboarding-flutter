import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onboarding/onboarding/widgets/base_circular_background.dart';
import 'package:onboarding/utils.dart';

class TreeWidget extends StatelessWidget {
  const TreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.screenWidth * .8,
      height: 0.screenHeight * .4,
      child: Stack(
        children: [
          BaseCicularbackground(
            color: Colors.lightGreen.shade100,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text('tree'),
          ),
          Positioned(
            bottom: 100.height,
            child: Container(
              color: Colors.greenAccent,
              width: 80.width,
              height: 20.height,
              child: const Center(child: Text('300XP')),
            ),
          ),
          Positioned(
            top: 80.height,
            right: 1.width,
            child: Container(
              color: Colors.greenAccent,
              width: 80.width,
              height: 20.height,
              child: const Center(child: Text('20 water')),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Positioned(
              bottom: 20.height,
              child: Container(
                color: Colors.redAccent,
                width: 180.width,
                height: 40.height,
                child: const Center(child: Text('Red Word')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
