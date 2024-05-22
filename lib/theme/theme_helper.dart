import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer.withOpacity(1),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.black900,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 2,
        space: 2,
        color: appTheme.gray300,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(0.6),
          fontSize: 15.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 11.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 30.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(0.6),
          fontSize: 28.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 25.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(0.6),
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 11.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w900,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 22.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 17.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w900,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF87CEEB),
    primaryContainer: Color(0X4C3C3C43),
    secondaryContainer: Color(0XFFCCCCCC),
    errorContainer: Color(0XFF00E676),
    onPrimary: Color(0XFF303133),
    onPrimaryContainer: Color(0X19FFFFFF),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber500 => Color(0XFFFFC107);
// Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue800 => Color(0XFF0052CC);
// BlueGray
  Color get blueGray100 => Color(0XFFD7D7D7);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray50 => Color(0XFFEBEEF5);
  Color get blueGray700 => Color(0XFF2A557C);
// Cyan
  Color get cyan400 => Color(0XFF11CAD6);
// DeepPurpleEc
  Color get deepPurple300Ec => Color(0XEC8877CC);
// Gray
  Color get gray100 => Color(0XFFF2F6FC);
  Color get gray10001 => Color(0XFFF0F2F5);
  Color get gray10002 => Color(0XFFF5F7FA);
  Color get gray10003 => Color(0XFFF5F5F5);
  Color get gray300 => Color(0XFFDCDFE6);
  Color get gray400 => Color(0XFFC0C4CC);
  Color get gray40001 => Color(0XFFC7C7CC);
  Color get gray500 => Color(0XFF999999);
  Color get gray60014 => Color(0X14747480);
  Color get gray700 => Color(0XFF606266);
  Color get gray900 => Color(0XFF111111);
// Indigo
  Color get indigo50 => Color(0XFFE4E7ED);
  Color get indigo600 => Color(0XFF41479B);
  Color get indigo800 => Color(0XFF22408B);
// LightBlue
  Color get lightBlueA700 => Color(0XFF007AFF);
  Color get lightBlueA70001 => Color(0XFF0078FF);
// Orange
  Color get orange400 => Color(0XFFFF991F);
// Redc
  Color get red3000c => Color(0X0CC77474);
// Red
  Color get red700 => Color(0XFFC8414B);
  Color get redA200 => Color(0XFFFF4B55);
// Teal
  Color get teal400 => Color(0XFF219782);
  Color get tealA400 => Color(0XFF00E89D);
}
