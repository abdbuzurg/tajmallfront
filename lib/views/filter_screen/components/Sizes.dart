import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detail_title.dart';
import 'package:taj_mall/models/clothing_specification.dart';
import 'package:taj_mall/views/filter_screen/filter_screen.dart';

class Sizes extends StatelessWidget {
  const Sizes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailTitle(title: "Размер"),
          SizedBox(height: 10),
          Consumer(
            builder: (BuildContext context, watch, child) {
              final String selectedSize = watch(filterStateNotifer).size;
              return Container(
                child: Wrap(
                  children: [
                    ...clothingSizes.map(
                      (size) => InkWell(
                        onTap: () {
                          watch(filterStateNotifer.notifier).updateSize(size);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5,
                            vertical: kDefaultPadding,
                          ),
                          margin: EdgeInsets.only(
                            right: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: selectedSize == size
                                ? theme.primaryColor
                                : theme.backgroundColor,
                            border: Border.all(
                              width: 1,
                              color: theme.primaryColor,
                            ),
                          ),
                          child: Text(
                            size,
                            style: TextStyle(
                              color: selectedSize == size
                                  ? theme.backgroundColor
                                  : theme.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
