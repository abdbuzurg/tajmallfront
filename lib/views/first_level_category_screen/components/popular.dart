import 'package:flutter/material.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/helpers/custom_card.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<WomanData> available = dummyWomanData;
    return Container(
      child: GridView.builder(
        itemCount: available.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return CustomCard(oneEntry: available[index]);
        },
      ),
    );
  }
}
