import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/views/second_level_category_screen/second_level_category_screen.dart';

class SecondLevelCategories extends StatelessWidget {
  const SecondLevelCategories({
    required this.firstLevelClassification,
    required this.secondLevelClassificationNames,
    Key? key,
  }) : super(key: key);

  final String firstLevelClassification;
  final List<String> secondLevelClassificationNames;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width =
        (MediaQuery.of(context).size.width - kDefaultPadding - 40) / 2;
    return Container(
      width: double.infinity,
      child: Wrap(
        children: [
          ...secondLevelClassificationNames.map(
            (classification) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondLevelCategoryScreen(
                      secondLevelCategoryScreenName: classification,
                    ),
                  ),
                );
              },
              child: Container(
                width: width,
                height: 75,
                margin: EdgeInsets.only(
                  bottom: 5,
                  left: 5,
                  right: 5,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding / 2,
                ),
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/categories/woman_category/$firstLevelClassification/$classification.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Center(
                  child: AutoSizeText(
                    classification,
                    maxFontSize: 32,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
