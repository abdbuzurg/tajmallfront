import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 10,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: theme.primaryColor, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: theme.primaryColor,
              boxShadow: [
                kDefaultBoxShadow(theme.backgroundColor),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: EdgeInsets.only(left: 5, right: 5),
            height: 60,
            child: Center(
              child: Text(
                categories[index],
                style: TextStyle(color: theme.backgroundColor),
              ),
            ),
          );
        },
      ),
    );
  }
}
