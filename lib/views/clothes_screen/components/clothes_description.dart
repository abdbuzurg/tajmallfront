import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detailed_title.dart';

class ClothesDescription extends StatelessWidget {
  const ClothesDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

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
          DetailedTitle(title: "O товаре"),
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              fontSize: theme.textTheme.bodyText2!.fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
