import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider =
    ChangeNotifierProvider<ThemeProvider>((ref) => ThemeProvider());

class ThemeProvider extends ChangeNotifier {
  bool _isLightTheme = true;
  bool get isLightTheme => _isLightTheme;

  void changeTheme() {
    _isLightTheme = !_isLightTheme;
    notifyListeners();
  }
}
