import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      onPressed: () {
        //When Clicked To do something
      },
      child: Text(
        "Искать",
        style: TextStyle(
          fontSize: theme.textTheme.headline1!.fontSize,
          color: theme.backgroundColor,
        ),
      ),
      style: TextButton.styleFrom(
        minimumSize: Size.fromHeight(50),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 7.5,
        ),
        backgroundColor: theme.primaryColor,
      ),
    );
  }
}
