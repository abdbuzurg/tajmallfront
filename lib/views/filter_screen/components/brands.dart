import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detail_title.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

  static const brands = ["Zara"];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailTitle(title: "Бренд"),
          SizedBox(height: 10),
          Container(
            child: Wrap(
              children: [
                ...brands.map(
                  (clothingType) => Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 1.5,
                      vertical: kDefaultPadding,
                    ),
                    margin: EdgeInsets.only(
                      right: 5,
                      bottom: 5,
                    ),
                    decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          clothingType,
                          style: TextStyle(
                            color: theme.backgroundColor,
                            fontSize: theme.textTheme.headline3!.fontSize,
                          ),
                        ),
                        SizedBox(width: 1),
                        Icon(
                          Icons.clear,
                          color: theme.backgroundColor,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 1.5,
                      vertical: kDefaultPadding),
                  margin: EdgeInsets.only(
                    right: 5,
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.add,
                    color: theme.backgroundColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
