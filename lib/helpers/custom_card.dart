import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:taj_mall/fake_data/woman_data.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/views/clothes_screen/clothes_screen.dart';

import 'custom_card_text.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    Key? key,
    required this.oneEntry,
  }) : super(key: key);

  final WomanData oneEntry;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AspectRatio(
      aspectRatio: 1 / 1.75,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: theme.primaryColor,
          boxShadow: [
            kDefaultBoxShadow(theme.primaryColor),
          ],
        ),
        margin: EdgeInsets.only(left: 5, right: 5),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ClothesScreen(widget.oneEntry),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      widget.oneEntry.images[0],
                      fit: BoxFit.fitWidth,
                    ),
                    Positioned(
                      right: 5,
                      top: 5,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Align(
                            alignment: Alignment.center,
                            child: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              color: isFavorite
                                  ? theme.primaryColor
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              CardText(
                child: AutoSizeText(
                  widget.oneEntry.name,
                  maxLines: 1,
                  maxFontSize: theme.textTheme.headline2!.fontSize!,
                  style: TextStyle(
                    color: theme.backgroundColor,
                    fontSize: theme.textTheme.headline2!.fontSize,
                    fontWeight: theme.textTheme.headline2!.fontWeight,
                  ),
                ),
              ),
              CardText(
                child: AutoSizeText(
                  "${widget.oneEntry.price} TJS",
                  style: TextStyle(
                    color: theme.textTheme.headline4!.color,
                    fontSize: theme.textTheme.headline4!.fontSize,
                    fontWeight: theme.textTheme.headline4!.fontWeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
