import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/headline.dart';

import 'components/categories.dart';
import 'components/new.dart';
import 'components/recommendations.dart';

class WomanTab extends StatelessWidget {
  const WomanTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Headline(text: "Категории"),
          Categories(),
          Headline(text: "Новое"),
          New(),
          Headline(text: "Рекоммендуем"),
          Recommendation(),
        ],
      ),
    );
  }
}
