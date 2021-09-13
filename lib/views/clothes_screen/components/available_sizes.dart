import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detail_title.dart';

class AvailableSizes extends StatefulWidget {
  const AvailableSizes({
    required this.sizes,
    Key? key,
  }) : super(key: key);

  final List<String> sizes;

  @override
  State<AvailableSizes> createState() => _AvailableSizesState();
}

class _AvailableSizesState extends State<AvailableSizes> {
  int _selectedSize = 0;

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
          DetailTitle(title: "Доступные размеры"),
          Container(
            height: 40,
            width: double.infinity,
            child: ListView.builder(
              itemCount: widget.sizes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedSize = index;
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: index == _selectedSize
                          ? theme.primaryColor
                          : theme.backgroundColor,
                      border: Border.all(
                        width: 1,
                        color: theme.primaryColor,
                      ),
                    ),
                    margin: EdgeInsets.only(right: 5),
                    child: Text(
                      widget.sizes[index],
                      style: TextStyle(
                        color: index == _selectedSize
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
