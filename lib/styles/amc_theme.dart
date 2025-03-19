import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:amc_ui_kit/styles/app_colors.dart';
import 'package:amc_ui_kit/styles/amc_fonts.dart';

class AMCTheme {
  static ThemeData get appThemeLight => ThemeData(
      cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
        primaryColor: AppColors.primary,
      ),
      fontFamily: AMCFonts.poppins,
      scaffoldBackgroundColor: AppColors.background,
      canvasColor: AppColors.background,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.background,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: false,
      ),
      colorScheme: const ColorScheme.light(
        surface: AppColors.background,
        primary: AppColors.primary,
        secondary: AppColors.brandPrimary,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: AppColors.foreground30,
        selectionHandleColor: AppColors.primary,
      ));
}
