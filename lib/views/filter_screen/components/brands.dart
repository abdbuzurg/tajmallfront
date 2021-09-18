import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/helpers/detail_title.dart';
import 'package:taj_mall/views/filter_screen/components/brand_picker.dart';
import 'package:taj_mall/views/filter_screen/filter_screen.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailTitle(title: "Бренд"),
          SizedBox(height: 10),
          Consumer(builder: (BuildContext context, watch, child) {
            final List<String> selectedBrands =
                watch(filterStateNotifer).brands;
            return Wrap(
              children: [
                ...selectedBrands.map(
                  (brand) => Container(
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
                          brand,
                          style: TextStyle(
                            color: theme.backgroundColor,
                            fontSize: theme.textTheme.headline3!.fontSize,
                          ),
                        ),
                        SizedBox(width: 1),
                        InkWell(
                          onTap: () {
                            watch(filterStateNotifer.notifier)
                                .removeBrand(brand);
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
                    showBrandPicker(context);
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
          }),
        ],
      ),
    );
  }
}
