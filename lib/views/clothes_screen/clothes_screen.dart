import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/providers/clothes_state_notifier.dart';
import 'package:taj_mall/views/clothes_screen/components/brand_products.dart';

import 'components/available_colors.dart';
import 'components/carousel.dart';
import 'components/clothes_description.dart';
import 'components/clothes_title.dart';
import 'components/available_sizes.dart';
import 'components/price_and_card.dart';
import 'components/similar_products.dart';

late dynamic clothesStateNotifier;

class ClothesScreen extends ConsumerWidget {
  ClothesScreen(this.data) {
    clothesStateNotifier =
        StateNotifierProvider.autoDispose<ClothesStateNotifier, ClothesState>(
      (ref) => ClothesStateNotifier(
        ClothesState(
          color: data.colors[0],
          size: data.sizes[0],
        ),
      ),
    );
  }

  final WomanData data;

  @override
  Widget build(BuildContext context, watch) {
    final theme = Theme.of(context);
    final bool isThereSimilarProducts = dummyWomanData
            .where((element) => element.type == data.type)
            .toList()
            .length >
        1;
    watch(clothesStateNotifier);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: theme.primaryColor,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Carousel(images: data.images),
                  ClothesTitle(
                    name: data.name,
                    brand: data.brand,
                  ),
                  if (data.colors.length > 1)
                    AvailableColors(
                      colors: data.colors,
                    ),
                  AvailableSizes(sizes: data.sizes),
                  ClothesDescription(description: data.description),
                  if (isThereSimilarProducts)
                    SimilarProducts(
                      type: data.type,
                      id: dummyWomanData.indexOf(data),
                    ),
                  BrandProducts(
                    brand: data.brand,
                    id: dummyWomanData.indexOf(data),
                  ),
                ],
              ),
            ),
          ),
          PriceAndCard(data: data),
        ],
      ),
    );
  }
}
