import 'package:flutter/material.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/views/clothes_screen/components/confirmation.dart';

class PriceAndCard extends StatelessWidget {
  const PriceAndCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final WomanData data;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      width: size.width,
      height: 60,
      decoration: BoxDecoration(
        color: theme.primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "${data.price.toString()} Сомони",
            style: TextStyle(
              fontSize: theme.textTheme.headline1!.fontSize,
              color: theme.backgroundColor,
            ),
          ),
          TextButton(
            onPressed: () {
              showConfirmation(context, data);
            },
            child: Row(
              children: [
                Icon(
                  Icons.local_grocery_store,
                  color: theme.primaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  "В корзину",
                  style: TextStyle(
                    color: theme.primaryColor,
                  ),
                ),
              ],
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 7.5,
              ),
              backgroundColor: theme.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
