import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClothingFilterStateNotifer extends StateNotifier<ClothingFilterState> {
  ClothingFilterStateNotifer(ClothingFilterState state) : super(state);

  void removeBrand(String brand) {
    state.brands.remove(brand);
    state = ClothingFilterState(
      size: state.size,
      brands: [...state.brands],
      priceFrom: state.priceFrom,
      priceTo: state.priceTo,
      clothingType: state.clothingType,
    );
  }

  void addBrand(String brand) {
    if (state.brands.indexOf(brand) == -1)
      state = ClothingFilterState(
        size: state.size,
        brands: [...state.brands, brand],
        priceFrom: state.priceFrom,
        priceTo: state.priceTo,
        clothingType: state.clothingType,
      );
  }

  void removeClothingType(String clothingType) {
    state.clothingType.remove(clothingType);
    state = ClothingFilterState(
      size: state.size,
      brands: state.brands,
      priceFrom: state.priceFrom,
      priceTo: state.priceTo,
      clothingType: [...state.clothingType],
    );
  }

  void addClothingType(String clothingType) {
    if (state.clothingType.indexOf(clothingType) == -1)
      state = ClothingFilterState(
        size: state.size,
        brands: state.brands,
        priceFrom: state.priceFrom,
        priceTo: state.priceTo,
        clothingType: [...state.clothingType, clothingType],
      );
  }

  void updateSize(String size) {
    state = ClothingFilterState(
      size: size,
      brands: state.brands,
      priceFrom: state.priceFrom,
      priceTo: state.priceTo,
      clothingType: state.clothingType,
    );
  }

  void updatePriceFrom(double priceFrom) {
    state = ClothingFilterState(
      size: state.size,
      brands: state.brands,
      priceFrom: priceFrom,
      priceTo: state.priceTo,
      clothingType: state.clothingType,
    );
  }

  void updatePriceTo(double priceTo) {
    state = ClothingFilterState(
      size: state.size,
      brands: state.brands,
      priceFrom: state.priceFrom,
      priceTo: priceTo,
      clothingType: state.clothingType,
    );
  }
}

@immutable
class ClothingFilterState {
  final List<String> clothingType;
  final List<String> brands;
  final String size;
  final double priceFrom;
  final double priceTo;

  ClothingFilterState({
    required this.clothingType,
    required this.brands,
    required this.size,
    required this.priceFrom,
    required this.priceTo,
  });
}
