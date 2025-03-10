import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4e625e),
      surfaceTint: Color(0xff4e625e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd3e9e3),
      onPrimaryContainer: Color(0xff556a65),
      secondary: Color(0xff58605e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdce4e1),
      onSecondaryContainer: Color(0xff5e6664),
      tertiary: Color(0xff5d5d6e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe4e2f7),
      onTertiaryContainer: Color(0xff646475),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffbf9f8),
      onSurface: Color(0xff1b1c1b),
      onSurfaceVariant: Color(0xff424846),
      outline: Color(0xff727876),
      outlineVariant: Color(0xffc2c8c5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303030),
      inversePrimary: Color(0xffb5cbc5),
      primaryFixed: Color(0xffd1e7e1),
      onPrimaryFixed: Color(0xff0b1f1b),
      primaryFixedDim: Color(0xffb5cbc5),
      onPrimaryFixedVariant: Color(0xff374b46),
      secondaryFixed: Color(0xffdce4e1),
      onSecondaryFixed: Color(0xff161d1b),
      secondaryFixedDim: Color(0xffc0c8c5),
      onSecondaryFixedVariant: Color(0xff414846),
      tertiaryFixed: Color(0xffe2e0f5),
      onTertiaryFixed: Color(0xff1a1a29),
      tertiaryFixedDim: Color(0xffc6c4d9),
      onTertiaryFixedVariant: Color(0xff454556),
      surfaceDim: Color(0xffdbdad8),
      surfaceBright: Color(0xfffbf9f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f3f2),
      surfaceContainer: Color(0xffefedec),
      surfaceContainerHigh: Color(0xffe9e8e6),
      surfaceContainerHighest: Color(0xffe4e2e1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff273a36),
      surfaceTint: Color(0xff4e625e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5d716c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff303836),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff676f6c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff353545),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6c6b7d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf9f8),
      onSurface: Color(0xff101111),
      onSurfaceVariant: Color(0xff313736),
      outline: Color(0xff4e5452),
      outlineVariant: Color(0xff686e6c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303030),
      inversePrimary: Color(0xffb5cbc5),
      primaryFixed: Color(0xff5d716c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff455954),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff676f6c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4f5654),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6c6b7d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff535364),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc7c6c5),
      surfaceBright: Color(0xfffbf9f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f3f2),
      surfaceContainer: Color(0xffe9e8e6),
      surfaceContainerHigh: Color(0xffdedcdb),
      surfaceContainerHighest: Color(0xffd2d1d0),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff1d302c),
      surfaceTint: Color(0xff4e625e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff394d49),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff262e2c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff434b49),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2a2b3a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff484858),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf9f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff272d2c),
      outlineVariant: Color(0xff444a49),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303030),
      inversePrimary: Color(0xffb5cbc5),
      primaryFixed: Color(0xff394d49),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff233632),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff434b49),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2d3432),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff484858),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff313141),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb9b8b7),
      surfaceBright: Color(0xfffbf9f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f0ef),
      surfaceContainer: Color(0xffe4e2e1),
      surfaceContainerHigh: Color(0xffd5d4d3),
      surfaceContainerHighest: Color(0xffc7c6c5),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffb5cbc5),
      onPrimary: Color(0xff213430),
      primaryContainer: Color(0xffd1e7e1),
      onPrimaryContainer: Color(0xff546864),
      secondary: Color(0xffc0c8c5),
      onSecondary: Color(0xff2a3230),
      secondaryContainer: Color(0xff434b49),
      onSecondaryContainer: Color(0xffb2bab7),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2f2f3f),
      tertiaryContainer: Color(0xffe2e0f5),
      onTertiaryContainer: Color(0xff636374),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff131413),
      onSurface: Color(0xffe4e2e1),
      onSurfaceVariant: Color(0xffc2c8c5),
      outline: Color(0xff8c9290),
      outlineVariant: Color(0xff424846),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e2e1),
      inversePrimary: Color(0xff4e625e),
      primaryFixed: Color(0xffd1e7e1),
      onPrimaryFixed: Color(0xff0b1f1b),
      primaryFixedDim: Color(0xffb5cbc5),
      onPrimaryFixedVariant: Color(0xff374b46),
      secondaryFixed: Color(0xffdce4e1),
      onSecondaryFixed: Color(0xff161d1b),
      secondaryFixedDim: Color(0xffc0c8c5),
      onSecondaryFixedVariant: Color(0xff414846),
      tertiaryFixed: Color(0xffe2e0f5),
      onTertiaryFixed: Color(0xff1a1a29),
      tertiaryFixedDim: Color(0xffc6c4d9),
      onTertiaryFixedVariant: Color(0xff454556),
      surfaceDim: Color(0xff131413),
      surfaceBright: Color(0xff393939),
      surfaceContainerLowest: Color(0xff0d0e0e),
      surfaceContainerLow: Color(0xff1b1c1b),
      surfaceContainer: Color(0xff1f201f),
      surfaceContainerHigh: Color(0xff292a2a),
      surfaceContainerHighest: Color(0xff343534),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffb5cbc5),
      onPrimary: Color(0xff213430),
      primaryContainer: Color(0xffd1e7e1),
      onPrimaryContainer: Color(0xff384c48),
      secondary: Color(0xffd6dedb),
      onSecondary: Color(0xff202725),
      secondaryContainer: Color(0xff8a9290),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2f2f3f),
      tertiaryContainer: Color(0xffe2e0f5),
      onTertiaryContainer: Color(0xff464657),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131413),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd8dedb),
      outline: Color(0xffadb3b1),
      outlineVariant: Color(0xff8b928f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e2e1),
      inversePrimary: Color(0xff384c48),
      primaryFixed: Color(0xffd1e7e1),
      onPrimaryFixed: Color(0xff021411),
      primaryFixedDim: Color(0xffb5cbc5),
      onPrimaryFixedVariant: Color(0xff273a36),
      secondaryFixed: Color(0xffdce4e1),
      onSecondaryFixed: Color(0xff0b1311),
      secondaryFixedDim: Color(0xffc0c8c5),
      onSecondaryFixedVariant: Color(0xff303836),
      tertiaryFixed: Color(0xffe2e0f5),
      onTertiaryFixed: Color(0xff0f101e),
      tertiaryFixedDim: Color(0xffc6c4d9),
      onTertiaryFixedVariant: Color(0xff353545),
      surfaceDim: Color(0xff131413),
      surfaceBright: Color(0xff444444),
      surfaceContainerLowest: Color(0xff070807),
      surfaceContainerLow: Color(0xff1d1e1d),
      surfaceContainer: Color(0xff272827),
      surfaceContainerHigh: Color(0xff323332),
      surfaceContainerHighest: Color(0xff3d3e3d),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffb5cbc5),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffd1e7e1),
      onPrimaryContainer: Color(0xff1a2e2a),
      secondary: Color(0xffeaf2ee),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbcc4c1),
      onSecondaryContainer: Color(0xff060d0b),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe2e0f5),
      onTertiaryContainer: Color(0xff282938),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff131413),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffecf1ee),
      outlineVariant: Color(0xffbec4c1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e2e1),
      inversePrimary: Color(0xff384c48),
      primaryFixed: Color(0xffd1e7e1),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb5cbc5),
      onPrimaryFixedVariant: Color(0xff021411),
      secondaryFixed: Color(0xffdce4e1),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc0c8c5),
      onSecondaryFixedVariant: Color(0xff0b1311),
      tertiaryFixed: Color(0xffe2e0f5),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffc6c4d9),
      onTertiaryFixedVariant: Color(0xff0f101e),
      surfaceDim: Color(0xff131413),
      surfaceBright: Color(0xff50504f),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1f201f),
      surfaceContainer: Color(0xff303030),
      surfaceContainerHigh: Color(0xff3b3b3b),
      surfaceContainerHighest: Color(0xff464746),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );

  /// Custom Color 1
  static const customColor1 = ExtendedColor(
    seed: Color(0xffba9f30),
    value: Color(0xffba9f30),
    light: ColorFamily(
      color: Color(0xff705d00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffba9f30),
      onColorContainer: Color(0xff433600),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff705d00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffba9f30),
      onColorContainer: Color(0xff433600),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff705d00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffba9f30),
      onColorContainer: Color(0xff433600),
    ),
    dark: ColorFamily(
      color: Color(0xffe2c553),
      onColor: Color(0xff3b2f00),
      colorContainer: Color(0xffba9f30),
      onColorContainer: Color(0xff433600),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffe2c553),
      onColor: Color(0xff3b2f00),
      colorContainer: Color(0xffba9f30),
      onColorContainer: Color(0xff433600),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffe2c553),
      onColor: Color(0xff3b2f00),
      colorContainer: Color(0xffba9f30),
      onColorContainer: Color(0xff433600),
    ),
  );


  List<ExtendedColor> get extendedColors => [
    customColor1,
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
