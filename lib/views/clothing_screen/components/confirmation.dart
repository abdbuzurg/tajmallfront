import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/helpers/constants.dart';

import '../clothing_screen.dart';

void showConfirmation(BuildContext context, WomanData data) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
    ),
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      final theme = Theme.of(context);
      Color selectedColor = context.read(clothesStateNotifier).color;
      String selectedSize = context.read(clothesStateNotifier).size;

      return Container(
        height: 225,
        padding: EdgeInsets.symmetric(
          horizontal: 2 * kDefaultPadding,
          vertical: 1.5 * kDefaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(data.images[0], width: 100),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      data.name,
                      maxFontSize: theme.textTheme.headline1!.fontSize!,
                      style: TextStyle(
                        fontSize: theme.textTheme.headline1!.fontSize!,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      data.brand,
                      style: TextStyle(
                        fontSize: theme.textTheme.subtitle1!.fontSize!,
                      ),
                    ),
                    Text(
                      "${data.price.toString()} Сомони",
                      style: TextStyle(
                        fontSize: theme.textTheme.headline2!.fontSize!,
                      ),
                    ),
                    if (data.colors.length > 1)
                      Row(
                        children: [
                          Text(
                            "Цвет",
                            style: TextStyle(
                              fontSize: theme.textTheme.headline2!.fontSize!,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selectedColor,
                            ),
                          ),
                        ],
                      ),
                    Row(
                      children: [
                        Text(
                          "Размер",
                          style: TextStyle(
                            fontSize: theme.textTheme.headline2!.fontSize!,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          selectedSize,
                          style: TextStyle(
                            fontSize: theme.textTheme.headline2!.fontSize!,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.local_grocery_store,
                    color: theme.backgroundColor,
                    size: 28,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Добавить в корзину",
                    style: TextStyle(
                      color: theme.backgroundColor,
                      fontSize: theme.textTheme.headline1!.fontSize,
                    ),
                  ),
                ],
              ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 7.5,
                ),
                backgroundColor: theme.primaryColor,
              ),
            ),
          ],
        ),
      );
    },
  );
}
