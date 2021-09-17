import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/views/filter_screen/components/clothing_type.dart';

import 'components/Sizes.dart';
import 'components/brands.dart';
import 'components/price.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Собственный подбор"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
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
    );
  }
}
