import 'package:flutter/material.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/views/clothes_screen/components/brand_products.dart';

import 'components/available_colors.dart';
import 'components/carousel.dart';
import 'components/clothes_description.dart';
import 'components/clothes_title.dart';
import 'components/available_sizes.dart';
import 'components/price_and_card.dart';
import 'components/similar_products.dart';

class ClothesScreen extends StatefulWidget {
  ClothesScreen({Key? key, required this.data}) : super(key: key);

  final WomanData data;

  @override
  _ClothesScreenState createState() => _ClothesScreenState();
}

class _ClothesScreenState extends State<ClothesScreen> {
  bool isFavorite = false;
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool isThereSimilarProducts = dummyWomanData
            .where((element) => element.type == widget.data.type)
            .toList()
            .length >
        1;
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
                  Carousel(images: widget.data.images),
                  ClothesTitle(
                    name: widget.data.name,
                    brand: widget.data.brand,
                  ),
                  AvailableColors(
                    colors: widget.data.colors,
                  ),
                  AvailableSizes(sizes: widget.data.sizes),
                  ClothesDescription(description: widget.data.description),
                  if (isThereSimilarProducts)
                    SimilarProducts(
                      type: widget.data.type,
                      id: dummyWomanData.indexOf(widget.data),
                    ),
                  BrandProducts(
                    brand: widget.data.brand,
                    id: dummyWomanData.indexOf(widget.data),
                  ),
                ],
              ),
            ),
          ),
          PriceAndCard(price: widget.data.price),
        ],
      ),
    );
  }
}
