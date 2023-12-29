import 'package:flutter/material.dart';
import 'package:theme_extension/theme/app_color.dart';
import 'package:theme_extension/theme/extended_color_scheme.dart';

abstract class BaseColorTheme {
  /// Main
  Color get primary;
  Color get secondary;
  Color get background;

  /// Scheme Colors
  ColorScheme get scheme;
  ExtendedColorScheme get extendedScheme;
}

class LightColorTheme implements BaseColorTheme {
  @override
  Color get background => AppColors.lightBackground;

  @override
  get primary => AppColors.primary;

  @override
  get secondary => AppColors.secondary;

  @override
  ColorScheme get scheme => ColorScheme.light(onBackground: Colors.indigo.shade900, background: background);

  @override
  ExtendedColorScheme get extendedScheme => const ExtendedColorScheme.light(
        primary2: AppColors.lightPrimary2,
        primary3: AppColors.lightPrimary3,
        secondary2: AppColors.darkSecondary2,
        secondary3: AppColors.darkSecondary3,
      );
}

class DarkColorTheme implements BaseColorTheme {
  @override
  get background => AppColors.darkBackground;

  @override
  get primary => AppColors.primary;

  @override
  get secondary => AppColors.secondary;

  @override
  ColorScheme get scheme => ColorScheme.light(onBackground: Colors.blue.shade200, background: background);

  @override
  ExtendedColorScheme get extendedScheme => const ExtendedColorScheme.dark(
        primary2: AppColors.darkPrimary2,
        primary3: AppColors.darkPrimary3,
        secondary2: AppColors.darkSecondary2,
        secondary3: AppColors.darkSecondary3,
      );
}

extension ColorExtension on BuildContext {
  ThemeData get colorTheme => Theme.of(this);
}

extension ThemeExtension on ThemeData {
  ExtendedColorScheme get extendedColorScheme => extension<ExtendedColorScheme>()!;
}
