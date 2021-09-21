import 'package:flutter/material.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/custom_card.dart';

class SecondLevelCategoryScreen extends StatelessWidget {
  const SecondLevelCategoryScreen({
    required this.secondLevelCategoryScreenName,
    Key? key,
  }) : super(key: key);
  final String secondLevelCategoryScreenName;

  @override
  Widget build(BuildContext context) {
    final List<WomanData> available = dummyWomanData
        .where((element) =>
            element.secondLevelClothingType == secondLevelCategoryScreenName)
        .toList();
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          secondLevelCategoryScreenName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_alt_sharp,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sort_sharp,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          child: available.length != 0
              ? GridView.builder(
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
                )
              : Center(
                  child: Text(
                    "Такой типа временно отсутсвтует в приложении",
                    style: TextStyle(
                      fontSize: theme.textTheme.headline1!.fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
        ),
      ),
    );
  }
}
