import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/models/clothing_specification.dart';

void showClothingTypePicker(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
    ),
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      final theme = Theme.of(context);
      List<String> _searchResults = clothingType;
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            height: MediaQuery.of(context).size.height - kToolbarHeight * 2,
            padding: EdgeInsets.symmetric(
              horizontal: 2 * kDefaultPadding,
              vertical: 2 * kDefaultPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  onChanged: (String word) {
                    if (word.isNotEmpty)
                      setState(() {
                        _searchResults = clothingType
                            .where((type) =>
                                type.toLowerCase().contains(word.toLowerCase()))
                            .toList();
                      });
                    else
                      setState(() {
                        _searchResults = clothingType;
                      });
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: theme.primaryColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: theme.primaryColor,
                        width: 0.5,
                      ),
                    ),
                    labelText: 'Имя типажа',
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
                Divider(
                  thickness: 2,
                  height: 20,
                  color: theme.primaryColor,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      clipBehavior: Clip.none,
                      children: [
                        ..._searchResults.map(
                          (type) => Container(
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
                              color: theme.backgroundColor,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: theme.primaryColor,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  type,
                                  style: TextStyle(
                                    color: theme.primaryColor,
                                    fontSize:
                                        theme.textTheme.headline3!.fontSize,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      );
    },
  );
}
