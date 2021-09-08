import 'package:flutter/material.dart';

final double kDefaultPadding = 10;
final double kDefaultMargin = 10;
BoxShadow kDefaultBoxShadow(Color color) => BoxShadow(
      color: Colors.black26,
      offset: const Offset(
        2.5,
        2.5,
      ),
      blurRadius: 3,
      spreadRadius: 0,
    );
