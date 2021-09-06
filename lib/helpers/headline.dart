import 'package:flutter/material.dart';

import 'constants.dart';

class Headline extends StatelessWidget {
  const Headline({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: Text("$text", style: Theme.of(context).textTheme.headline1),
    );
  }
}
