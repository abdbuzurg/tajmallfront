import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';

class ClothesTitle extends StatelessWidget {
  const ClothesTitle({
    Key? key,
    required this.name,
    required this.brand,
  }) : super(key: key);

  final String name;
  final String brand;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            name,
            maxFontSize: theme.textTheme.headline1!.fontSize!,
            style: TextStyle(
              fontSize: theme.textTheme.headline1!.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            brand,
            style: TextStyle(
              fontSize: theme.textTheme.subtitle1!.fontSize,
              color: theme.textTheme.subtitle1!.color,
            ),
          ),
        ],
      ),
    );
  }
}
