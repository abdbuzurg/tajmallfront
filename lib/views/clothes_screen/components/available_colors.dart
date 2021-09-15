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
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DetailTitle(title: "Доступные цвета"),
          Container(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: colors.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {
                    context
                        .read(clothesStateNotifier.notifier)
                        .updateColor(colors[index]);
                  },
                  child: Container(
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.only(right: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: colors[index] == selectedColor
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
                        color: colors[index],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
