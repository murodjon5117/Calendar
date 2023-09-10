import 'package:custom_calendar/core/resources/app_colors.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/core/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    scaffoldBackgroundColor: Colors.black,
    primarySwatch: getMaterialColor(AppColors.primarySwatchColor),
    splashColor: AppColors.transparent,
    // Bottom nav bar theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      titleTextStyle: _getTextStyle(
        fontSize: 18,
        color: AppColors.secondaryText,
      ),
    ),

    // text theme
    textTheme: TextTheme(
      titleMedium: _getTextStyle(
          fontSize: AppSize.s18,
          color: AppColors.secondaryText,
          fontWeight: FontWeight.w700),
      titleLarge: _getTextStyle(
          fontSize: AppSize.s20,
          color: AppColors.secondaryText,
          fontWeight: FontWeight.w700),
      titleSmall: _getTextStyle(
        fontSize: AppSize.s16,
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: _getTextStyle(
        fontSize: AppSize.s15,
        fontWeight: FontWeight.w400,
        color: AppColors.white,
      ),
      bodyMedium: _getTextStyle(
        fontSize: AppSize.s12,
        color: AppColors.inactiveColor60,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: _getTextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryText,
      ),
    ),
  );
}

TextStyle _getTextStyle({
  required double fontSize,
  FontWeight fontWeight = FontWeight.w600,
  required Color color,
}) {
  return GoogleFonts.mavenPro(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}
