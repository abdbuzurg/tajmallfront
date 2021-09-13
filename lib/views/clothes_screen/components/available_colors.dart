import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detail_title.dart';

class AvailableColors extends StatefulWidget {
  AvailableColors({Key? key, required this.colors}) : super(key: key);

  final List<Color> colors;

  @override
  _AvailableColorsState createState() => _AvailableColorsState();
}

class _AvailableColorsState extends State<AvailableColors> {
  int _selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                    ...widget.colors
                        .asMap()
                        .map((int index, Color color) => MapEntry(
                              index,
                              InkWell(
                                borderRadius: BorderRadius.circular(5),
                                onTap: () {
                                  setState(() {
                                    _selectedColor = index;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(3),
                                  margin: EdgeInsets.only(right: 5),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: index == _selectedColor
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
                            ))
                        .values
                        .toList(),
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
