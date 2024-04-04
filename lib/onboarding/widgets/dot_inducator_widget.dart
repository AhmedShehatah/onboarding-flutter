import 'package:flutter/material.dart';
import 'package:onboarding/utils.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8.height,
      width: 8.width,
      decoration: BoxDecoration(
        color: isActive ? Colors.amber : Colors.white,
        border: isActive ? null : Border.all(color: Colors.amber),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
