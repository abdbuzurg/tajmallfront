import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detailed_title.dart';
import 'package:taj_mall/models/clothing_specification.dart';

import 'components/popular.dart';
import 'components/secondLevelCategories.dart';

class FirstLevelCategoryScreen extends StatelessWidget {
  const FirstLevelCategoryScreen({
    Key? key,
    required this.nameOfCategory,
    required this.firstClothingLevelClassification,
  }) : super(key: key);

  final String nameOfCategory;
  final String firstClothingLevelClassification;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameOfCategory),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 2,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              DetailedTitle(title: "Тип одежды"),
              SizedBox(height: 10),
              SecondLevelCategories(
                firstLevelClassification: firstClothingLevelClassification,
                secondLevelClassificationNames: FirstClothingLevelClassification
                    .getSecondLevelClassificationNames(
                        firstClothingLevelClassification),
              ),
              DetailedTitle(title: "Популярное"),
              SizedBox(height: 10),
              Popular(),
            ],
          ),
        ),
      ),
    );
  }
}
