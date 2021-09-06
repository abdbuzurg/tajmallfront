import 'dart:ui';

import 'package:flutter/material.dart';

class ColorLight {
  ///
  /// [Light Colors]
  /// [Primary], [Background], [Card], [Title], [Subtitle], [Font Disable], [Button Disable], [Divider]
  ///Color(0xFFFC8080)
  static const Color primary = Colors.orange;
  // static const Color accent = Color(0xFFFF6600);
  static const Color background = Color(0xFFFAFAFA);
  static const Color card = Color(0xFFFFFFFF);
  static const Color fontTitle = Color(0xFF202020);
  static const Color fontSubtitle = Color(0xFF737373);
  static const Color fontDisable = Color(0xFF9B9B9B);
  static const Color disabledButton = Color(0xFFB9B9B9);
  static const Color divider = Color(0xFFDCDCDC);
  //for blue 	3, 169, 244 -> 244, 204, 3
  //for orange 255, 152, 0 -> 204, 255, 0
  static const Color cardMoneyColor = Colors.black;

  ///
  /// [Success], [Warning], [Error],
  ///
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color error = Color(0xFFD32F2F);
  static const Color info = Color(0xFF1976D2);
}

class ColorDark {
  ///
  /// [Dark Colors]
  /// [Primary], [Background], [Card], [Title], [Subtitle], [Font Disable], [Button Disable], [Divider]
  ///
  static const Color primary = Color.fromRGBO(255, 89, 0, 1.0);
  // static const Color accent = Color(0xFFFF6600);
  static const Color background = Color(0xFF303030);
  static const Color card = Color(0xFF424242);
  static const Color fontTitle = Color(0xFFFFFFFF);
  static const Color fontSubtitle = Color(0xFFC1C1C1);
  static const Color fontDisable = Color(0xFF989898);
  static const Color disabledButton = Color(0xFF6E6E6E);
  static const Color divider = Color(0xFF494949);
  static const Color cardMoneyColor = Colors.white;

  ///
  /// [Success], [Warning], [Error],
  ///
  static const Color success = Color(0xFF81C784);
  static const Color warning = Color(0xFFFFB74D);
  static const Color error = Color(0xFFE57373);
  static const Color info = Color(0xFF64B5F6);
}
