import 'package:flutter/material.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/helpers/custom_card.dart';

class New extends StatelessWidget {
  const New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<WomanData> data = shuffle(dummyWomanData);
    return Container(
      width: double.infinity,
      height: 280,
      margin: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 0,
      ),
      child: ListView.builder(
        clipBehavior: Clip.none,
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final oneEntry = data[index];
          return CustomCard(oneEntry: oneEntry);
        },
      ),
    );
  }
}
