import 'package:flutter/material.dart';

final double kDefaultPadding = 10;
final double kDefaultMargin = 10;
BoxShadow kDefaultBoxShadow(Color color) => BoxShadow(
      color: color,
      offset: const Offset(
        2.0,
        2.0,
      ),
      blurRadius: 1.0,
      spreadRadius: 1.0,
    );
