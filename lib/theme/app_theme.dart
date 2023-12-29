import 'package:flutter/material.dart';
import 'package:theme_extension/theme/base_color_theme.dart';

abstract class IAppTheme {
  BaseColorTheme get colorTheme;
}

class LightAppTheme extends IAppTheme {
  @override
  BaseColorTheme get colorTheme => LightColorTheme();
}

class DarkAppTheme extends IAppTheme {
  @override
  BaseColorTheme get colorTheme => DarkColorTheme();
}

abstract class AppTheme {
  static ThemeData createTheme(IAppTheme theme) {
    return ThemeData(
      scaffoldBackgroundColor: theme.colorTheme.background,
      colorScheme: theme.colorTheme.scheme,
      primaryColor: theme.colorTheme.primary,
      focusColor: theme.colorTheme.secondary,
      extensions: [theme.colorTheme.extendedScheme],
    );
  }
}
