import 'package:flutter/material.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/custom_card.dart';
import 'package:taj_mall/helpers/detailed_title.dart';

class SimilarProducts extends StatefulWidget {
  const SimilarProducts({Key? key, required this.type, required this.id})
      : super(key: key);

  final ClothesType type;
  final int id;

  @override
  State<SimilarProducts> createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  late List<WomanData> _similarProducts = dummyWomanData
      .where((element) =>
          element.type == widget.type &&
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
          DetailedTitle(title: "Подобные товары"),
          SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              itemCount: _similarProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomCard(oneEntry: _similarProducts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
