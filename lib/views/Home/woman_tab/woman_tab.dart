import 'package:flutter/material.dart';
import 'package:taj_mall/views/Home/woman_tab/components/categories.dart';

class WomanTab extends StatelessWidget {
  const WomanTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Категории", style: Theme.of(context).textTheme.headline1),
          SizedBox(height: 10),
          Categories(),
        ],
      ),
    );
  }
}
