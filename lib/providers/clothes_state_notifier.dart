import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClothesStateNotifier extends StateNotifier<Clothes> {
  ClothesStateNotifier(Clothes state) : super(state);

  void updateSize(String size) {
    state = Clothes(state.color, size);
  }

  void updateColor(Color color) {
    state = Clothes(color, state.size);
  }
}

class Clothes {
  Color color;
  String size;

  Clothes(this.color, this.size);
}
