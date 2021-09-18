import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClothesStateNotifier extends StateNotifier<ClothesState> {
  ClothesStateNotifier(ClothesState state) : super(state);

  void updateSize(String size) {
    state = ClothesState(color: state.color, size: size);
  }

  void updateColor(Color color) {
    state = ClothesState(color: color, size: state.size);
  }
}

class ClothesState {
  final Color color;
  final String size;

  ClothesState({required this.color, required this.size});
}
