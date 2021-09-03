import 'package:flutter/material.dart';

class CustomOverlay extends StatelessWidget {
  const CustomOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
    );
  }
}
