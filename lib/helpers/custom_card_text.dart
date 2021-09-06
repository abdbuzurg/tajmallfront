import 'package:flutter/material.dart';

import 'constants.dart';

class CardText extends StatelessWidget {
  const CardText({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: kDefaultPadding / 2,
      ),
      child: child,
    );
  }
}
