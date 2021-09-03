import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> categories = [
    "Верхняя\nодежда",
    "Платья",
    "Повседневная\nодежда",
    "Спортивная\nодежда",
    "Нижнее\nбильё",
    "Все\nкатегории",
  ];
  // final List<Icon> categoriesIcons = [
  //   Icon(FontAwesomeIcons.tshirt),

  // ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 60,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...categories.map(
            (category) => Container(
              decoration: BoxDecoration(
                border: Border.all(color: theme.primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: theme.primaryColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              margin: EdgeInsets.only(left: 5, right: 5),
              height: 50,
              child: Center(
                child: Text(
                  category,
                  style: TextStyle(color: theme.backgroundColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
