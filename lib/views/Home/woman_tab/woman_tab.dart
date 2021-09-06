import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/headline.dart';
import 'package:taj_mall/views/Home/woman_tab/components/categories.dart';
import 'package:taj_mall/views/Home/woman_tab/components/recommendations.dart';

import 'components/new.dart';

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
