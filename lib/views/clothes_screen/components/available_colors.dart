import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detail_title.dart';
import 'package:taj_mall/views/clothes_screen/clothes_screen.dart';

class AvailableColors extends StatelessWidget {
  const AvailableColors({required this.colors});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Color selectedColor = context.read(clothesStateNotifier).color;
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DetailTitle(title: "Доступные цвета"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    ...colors.map(
                      (Color color) => InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {
                          context
                              .read(clothesStateNotifier.notifier)
                              .updateColor(color);
                        },
                        child: Container(
                          padding: EdgeInsets.all(3),
                          margin: EdgeInsets.only(right: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: color == selectedColor
                                  ? theme.primaryColor
                                  : theme.backgroundColor,
                              width: 2,
                            ),
                          ),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
