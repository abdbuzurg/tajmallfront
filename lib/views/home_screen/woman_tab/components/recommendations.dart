import 'package:flutter/material.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/helpers/custom_card.dart';

class Recommendation extends StatefulWidget {
  Recommendation({Key? key}) : super(key: key);

  @override
  _RecommendationState createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  @override
  Widget build(BuildContext context) {
    final List<WomanData> data = shuffle(dummyWomanData);
    return AspectRatio(
      aspectRatio: 1 / 0.85,
      child: Container(
        width: double.infinity,
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
      ),
    );
  }
}
