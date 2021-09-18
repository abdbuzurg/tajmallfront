import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/providers/filter_state_notifier.dart';
import 'package:taj_mall/views/filter_screen/components/clothing_type.dart';

import 'components/sizes.dart';
import 'components/brands.dart';
import 'components/price.dart';
import 'components/search_button.dart';

late dynamic filterStateNotifer;

class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key}) {
    filterStateNotifer = StateNotifierProvider.autoDispose<
        ClothingFilterStateNotifer, ClothingFilterState>(
      (ref) => ClothingFilterStateNotifer(
        ClothingFilterState(
          clothingType: [],
          size: "XS",
          priceFrom: 0,
          priceTo: 0,
          brands: [],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Собственный подбор"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 2,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ClothingType(),
                    Sizes(),
                    Price(),
                    SizedBox(height: 5),
                    Brands(),
                  ],
                ),
              ),
            ),
            SearchButton()
          ],
        ),
      ),
    );
  }
}
