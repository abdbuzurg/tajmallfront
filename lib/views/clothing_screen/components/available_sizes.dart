import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detailed_title.dart';
import 'package:taj_mall/views/clothing_screen/clothing_screen.dart';

class AvailableSizes extends StatelessWidget {
  const AvailableSizes({
    required this.sizes,
  });
  final List<String> sizes;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
          Consumer(
            builder: (BuildContext context, watch, child) {
              final String selectedSize = watch(clothesStateNotifier).size;
              return Container(
                height: 40,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: sizes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        watch(clothesStateNotifier.notifier)
                            .updateSize(sizes[index]);
                      },
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding,
                        ),
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
              );
            },
          ),
        ],
      ),
    );
  }
}
