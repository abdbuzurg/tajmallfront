import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taj_mall/helpers/themes.dart';
import 'package:taj_mall/providers/theme_provider.dart';
import 'package:taj_mall/views/main_screen/main_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context, watch, child) {
      final theme = watch(themeProvider);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Taj Mall',
        theme: themeLight(context),
        darkTheme: themeDark(context),
        themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
        home: MainScreen(),
      );
    });
  }
}
