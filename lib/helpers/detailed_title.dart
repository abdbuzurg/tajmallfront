import 'package:flutter/material.dart';

class DetailedTitle extends StatelessWidget {
  const DetailedTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      title,
      style: TextStyle(
        fontSize: theme.textTheme.headline3!.fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
