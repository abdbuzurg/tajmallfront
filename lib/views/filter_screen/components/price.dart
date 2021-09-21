import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detailed_title.dart';
import 'package:taj_mall/views/filter_screen/filter_screen.dart';

class Price extends StatelessWidget {
  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailedTitle(title: "Цена"),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(
                  onChanged: (String value) {
                    context
                        .read(filterStateNotifer.notifier)
                        .updatePriceTo(double.parse(value.trim()));
                  },
                  keyboardType: TextInputType.number,
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
                  onChanged: (String value) {
                    context
                        .read(filterStateNotifer.notifier)
                        .updatePriceFrom(double.parse(value.trim()));
                  },
                  keyboardType: TextInputType.number,
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
