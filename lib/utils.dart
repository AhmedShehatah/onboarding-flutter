import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension ScreenHelper on num {
  Size get _screenSize =>
      MediaQueryData.fromView(PlatformDispatcher.instance.views.first).size;
  double get width => _screenSize.width * toDouble() / 428;
  double get height => _screenSize.height * toDouble() / 926;
  SizedBox get emptyHeight => SizedBox(height: height);
  double get screenHeight => _screenSize.height;
  double get screenWidth => _screenSize.width;
}
