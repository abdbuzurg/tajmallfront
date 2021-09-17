import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detail_title.dart';

class Price extends StatelessWidget {
  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailTitle(title: "Цена"),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: theme.primaryColor,
                        width: 0.5,
                      ),
                    ),
                    labelText: 'От',
                    labelStyle: TextStyle(
                      color: theme.primaryColor,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding / 2,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: theme.primaryColor,
                        width: 1.5,
                      ),
                    ),
                    focusColor: theme.primaryColor,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: theme.primaryColor,
                        width: 0.5,
                      ),
                    ),
                    labelText: 'До',
                    labelStyle: TextStyle(
                      color: theme.primaryColor,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding / 2,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: theme.primaryColor,
                        width: 1.5,
                      ),
                    ),
                    focusColor: theme.primaryColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
