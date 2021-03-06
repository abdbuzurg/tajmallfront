import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/models/clothing_specification.dart';
import 'package:taj_mall/views/filter_screen/filter_screen.dart';
import 'package:taj_mall/views/first_level_category_screen/first_level_category_screen.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  static const Map<String, String> categories = {
    "Бытовая одежда":
        "assets/images/categories/woman_category/casual_clothing.jpg",
    "Спортивная одежда":
        "assets/images/categories/woman_category/sport_clothing.jpg",
    "Национальная одежда":
        "assets/images/categories/woman_category/national_clothing.jpg",
    "Собственный подбор":
        "assets/images/categories/woman_category/find_yourself.jpg",
  };

  String getClassification(String classification) {
    switch (classification) {
      case "Бытовая одежда":
        return FirstClothingLevelClassification.casual;
      case "Спортивная одежда":
        return FirstClothingLevelClassification.sport;
      case "Национальная одежда":
        return FirstClothingLevelClassification.national;

      default:
        return FirstClothingLevelClassification.casual;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final List<String> categoriesNames = categories.keys.toList();
    final List<String> categoriesImages = categories.values.toList();
    return Container(
      height: 150,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: categoriesImages.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              if (index == categoriesNames.length - 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilterScreen(),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstLevelCategoryScreen(
                      nameOfCategory: categoriesNames[index],
                      firstClothingLevelClassification:
                          getClassification(categoriesNames[index]),
                    ),
                  ),
                );
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: theme.primaryColor,
                image: DecorationImage(
                  image: AssetImage(categoriesImages[index]),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
                boxShadow: [
                  kDefaultBoxShadow(theme.primaryColor),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              margin: EdgeInsets.only(left: 5, right: 5),
              height: 150,
              width: 250,
              child: Center(
                child: Text(
                  categoriesNames[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: theme.backgroundColor,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
