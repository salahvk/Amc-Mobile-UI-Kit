import 'package:amc_ui_kit/styles/get_color.dart';
import 'package:flutter/material.dart';

class BottomNavigationPaletteTab {
  static Color selectedIconColor(context) {
    final Brightness brightness = Theme.of(context).brightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode ? Colors.white : Colors.white;
  }

  static Color unselectedIconColor(context) {
    final Brightness brightness = Theme.of(context).brightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode ? Colors.white : Colors.grey;
  }

  static Color selectedItemColor(context) {
    final Brightness brightness = Theme.of(context).brightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode ? Colors.white : Colors.white;
  }

  static Color unselectedItemColor(context) {
    final Brightness brightness = Theme.of(context).brightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode ? Colors.white : Colors.grey;
  }

  static Color selectionColor(context) {
    return Theme.of(context).primaryColor;
  }
}

class PaletteTab {
  // Color use for login page background
  Color bgcolorGradient1 = getColor("EEEEEF");
  Color bgcolorGradient2 = getColor("EEEEEF");

  static Color primaryColor(context) {
    return Theme.of(context).primaryColor;
  }

  static Color secondaryColor(context) {
    return Theme.of(context).colorScheme.secondary;
  }

  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color blackColor = const Color(0xFF000000);
  static Color bodySmall = const Color(0xff271F1F);
  static Color titleLarge = const Color(0xff3c2665);
  static Color displayMedium = const Color(0xff833580);
  static Color grayColor = Colors.grey;
  static const Color commonGrey = Color(0x7E000000);
  static const Color lightGrey = Color(0xFFEEEEE8);
  static const Color lightGrey1 = Color.fromARGB(255, 242, 242, 238);
  static const Color red = Color(0xFFE00000);

  static const Color background = Color(0xFFF3F4F6);
  static const Color border = Color(0xFFEEEEEF);
  static const Color lightGreen = Color(0xFFCFE8E2);
  static const Color green = Colors.green;
  static const Color divider = Colors.grey;
  PaletteTab({required this.bgcolorGradient1, required this.bgcolorGradient2});
}

class PaletteMobile {
  static Color primaryColor(context) {
    // print('555----------------- ${Theme.of(context).primaryColor}');
    return Theme.of(context).primaryColor;
  }

  static Color tertiaryColor(context) {
    return Theme.of(context).colorScheme.tertiary;
  }


  static Color secondaryColor(context) {
    return Theme.of(context).colorScheme.secondary;
  }

  
  static Color surface(context) {
    return Theme.of(context).colorScheme.surface;
  }

static Color ontertiary(context) {
    return Theme.of(context).colorScheme.onTertiary;
  }
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color blackColor = const Color(0xFF000000);
  static Color titleSmall = const Color(0xff9E9E9E);
  static Color bodySmall = const Color(0xff271F1F);
  static Color displayMedium = const Color(0xff833580);
  static const Color commonGrey = Color.fromRGBO(0, 0, 0, 0.5);
  static const Color lightGrey2 = Color.fromARGB(255, 196, 192, 192);
  static const Color background = Color(0xFFF3F4F6);
  static const Color border = Color(0xFFEEEEEF);

  static const Color lightGreen = Color(0xFFCFE8E2);
  static const Color green = Colors.green;
  static Color greyColor = Colors.grey;
}
