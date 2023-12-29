import 'package:flutter/material.dart';

@immutable
class ExtendedColorScheme extends ThemeExtension<ExtendedColorScheme> {
  const ExtendedColorScheme({
    required this.primary2,
    required this.primary3,
    required this.secondary2,
    required this.secondary3,
  });

  const ExtendedColorScheme.light({
    required this.primary2,
    required this.primary3,
    required this.secondary2,
    required this.secondary3,
  });

  const ExtendedColorScheme.dark({
    required this.primary2,
    required this.primary3,
    required this.secondary2,
    required this.secondary3,
  });

  final Color? primary2;
  final Color? primary3;
  final Color? secondary2;
  final Color? secondary3;

  ExtendedColorScheme copyWith({
    Color? primary2,
    Color? primary3,
    Color? secondary2,
    Color? secondary3,
  }) {
    return ExtendedColorScheme(
      primary2: primary2 ?? this.primary2,
      primary3: primary3 ?? this.primary3,
      secondary2: secondary2 ?? this.secondary2,
      secondary3: secondary3 ?? this.secondary3,
    );
  }

  @override
  ThemeExtension<ExtendedColorScheme> lerp(ThemeExtension<ExtendedColorScheme>? other, double t) {
    if (other is! ExtendedColorScheme) {
      return this;
    }
    return ExtendedColorScheme(
      primary2: Color.lerp(primary2, other.primary2, t),
      primary3: Color.lerp(primary3, other.primary3, t),
      secondary2: Color.lerp(primary2, other.primary2, t),
      secondary3: Color.lerp(primary2, other.primary2, t),
    );
  }
}
