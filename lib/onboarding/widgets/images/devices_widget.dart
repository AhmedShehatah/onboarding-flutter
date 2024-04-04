import 'package:flutter/material.dart';
import 'package:onboarding/onboarding/widgets/base_circular_background.dart';
import 'package:onboarding/utils.dart';

class DevicesWidget extends StatelessWidget {
  const DevicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.screenWidth * .8,
      height: 0.screenHeight * .4,
      child: Stack(
        alignment: Alignment.center,
        children: [
          BaseCicularbackground(
            color: Colors.cyan.shade100,
          ),
          Positioned(
            bottom: 60,
            left: 10,
            child: Container(
              color: Colors.amber,
              width: 250,
              height: 150,
              child: const Center(child: Text('laptop')),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 10,
            child: Container(
              color: Colors.red,
              width: 150,
              height: 200,
              child: const Center(child: Text('phone')),
            ),
          )
        ],
      ),
    );
  }
}
