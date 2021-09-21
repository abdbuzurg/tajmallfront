import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detailed_title.dart';

import '../filter_screen.dart';
import 'clothing_type_picker.dart';

class ClothingType extends StatelessWidget {
  const ClothingType({Key? key}) : super(key: key);

  static const List<String> randomForNow = [
    "Плащь",
    "Дождевик",
    "Куртка",
    "Ветровка",
    "Безркавка",
    "Блуза",
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailedTitle(title: "Тип одежды"),
          SizedBox(height: 10),
          Consumer(
            builder: (BuildContext context, watch, child) {
              final List<String> selectedClothingTypes =
                  watch(filterStateNotifer).clothingType;
              return Wrap(
                children: [
                  ...selectedClothingTypes.map(
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
                          InkWell(
                            onTap: () {
                              watch(filterStateNotifer.notifier)
                                  .removeClothingType(clothingType);
                            },
                            child: Icon(
                              Icons.clear,
                              color: theme.backgroundColor,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showClothingTypePicker(context);
                    },
                    child: Container(
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
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
