import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detailed_title.dart';
import 'package:taj_mall/views/clothes_screen/clothes_screen.dart';

class AvailableSizes extends StatelessWidget {
  const AvailableSizes({required this.sizes});
  final List<String> sizes;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final String selectedSize = context.read(clothesStateNotifier).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DetailedTitle(title: "Доступные размеры"),
          Container(
            height: 40,
            width: double.infinity,
            child: ListView.builder(
              itemCount: sizes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    context
                        .read(clothesStateNotifier.notifier)
                        .updateSize(sizes[index]);
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: sizes[index] == selectedSize
                          ? theme.primaryColor
                          : theme.backgroundColor,
                      border: Border.all(
                        width: 1,
                        color: theme.primaryColor,
                      ),
                    ),
                    margin: EdgeInsets.only(right: 5),
                    child: Text(
                      sizes[index],
                      style: TextStyle(
                        color: sizes[index] == selectedSize
                            ? theme.backgroundColor
                            : theme.primaryColor,
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
