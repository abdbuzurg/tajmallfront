import 'package:flutter/material.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/custom_card.dart';
import 'package:taj_mall/helpers/detail_title.dart';

class BrandProducts extends StatefulWidget {
  const BrandProducts({Key? key, required this.brand, required this.id})
      : super(key: key);

  final String brand;
  final int id;

  @override
  State<BrandProducts> createState() => _BrandProductsState();
}

class _BrandProductsState extends State<BrandProducts> {
  late List<WomanData> _brandProducts = dummyWomanData
      .where((element) =>
          element.brand == widget.brand &&
          dummyWomanData.indexOf(element) != widget.id)
      .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailTitle(title: "Товары с бренда ${widget.brand}"),
          SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              itemCount: _brandProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomCard(oneEntry: _brandProducts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
