class FirebaseThemeConfig {
  FirebaseThemeConfig({
    required this.appTheme,
    required this.tabTheme,
  });

  final Theme? appTheme;
  final Theme? tabTheme;

  factory FirebaseThemeConfig.fromJson(Map<String, dynamic> json) {
    return FirebaseThemeConfig(
      appTheme:
          json["AppTheme"] == null ? null : Theme.fromJson(json["AppTheme"]),
      tabTheme:
          json["TabTheme"] == null ? null : Theme.fromJson(json["TabTheme"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "AppTheme": appTheme?.toJson(),
        "TabTheme": tabTheme?.toJson(),
      };
}

class Theme {
  Theme({
    required this.light,
    required this.dark,
  });

  final Light? light;
  final Dark? dark;

  factory Theme.fromJson(Map<String, dynamic> json) {
    return Theme(
      light: json["light"] == null ? null : Light.fromJson(json["light"]),
      dark: json["dark"] == null ? null : Dark.fromJson(json["dark"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "light": light?.toJson(),
        "dark": dark?.toJson(),
      };
}

class Dark {
  Dark({
    required this.scaffoldBackgroundColor,
    required this.appBar,
    required this.colorScheme,
    required this.fontName,
    required this.googleFont,
    this.bgcolorGradient,
  });

  final String? scaffoldBackgroundColor;
  final AppBar? appBar;
  final DarkColorScheme? colorScheme;
  final String? fontName;
  final bool? googleFont;
  final BgColorGradient? bgcolorGradient;

  factory Dark.fromJson(Map<String, dynamic> json) {
    return Dark(
      scaffoldBackgroundColor: json["scaffoldBackgroundColor"],
      appBar: json["appBar"] == null ? null : AppBar.fromJson(json["appBar"]),
      colorScheme: json["colorScheme"] == null
          ? null
          : DarkColorScheme.fromJson(json["colorScheme"]),
      fontName: json["fontName"],
      googleFont: json["googleFont"],
      bgcolorGradient: json["bgcolorGradient"] == null
          ? null
          : BgColorGradient.fromJson(json["bgcolorGradient"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "scaffoldBackgroundColor": scaffoldBackgroundColor,
        "appBar": appBar?.toJson(),
        "colorScheme": colorScheme?.toJson(),
        "fontName": fontName,
        "googleFont": googleFont,
        "bgcolorGradient": bgcolorGradient?.toJson(),
      };
}

class AppBar {
  AppBar({
    required this.backgroundColor,
    required this.elevation,
    required this.iconColor,
  });

  final String? backgroundColor;
  final int? elevation;
  final String? iconColor;

  factory AppBar.fromJson(Map<String, dynamic> json) {
    return AppBar(
      backgroundColor: json["backgroundColor"],
      elevation: json["elevation"],
      iconColor: json["iconColor"],
    );
  }

  Map<String, dynamic> toJson() => {
        "backgroundColor": backgroundColor,
        "elevation": elevation,
        "iconColor": iconColor,
      };
}

class DarkColorScheme {
  DarkColorScheme(
      {required this.primary,
      required this.surface,
      required this.secondary,
      required this.tertiary,
      required this.ontertiary});

  final String? primary;
  final String? surface;
  final String? secondary;
  final String? tertiary;
  final String? ontertiary;

  factory DarkColorScheme.fromJson(Map<String, dynamic> json) {
    return DarkColorScheme(
      primary: json["primary"],
      surface: json["surface"],
      secondary: json["secondary"],
      tertiary: json["tertiary"],
      ontertiary: json["ontertiary"],
    );
  }

  Map<String, dynamic> toJson() => {
        "primary": primary,
        "surface": surface,
        "secondary": secondary,
        "tertiary": tertiary,
        "ontertiary": ontertiary,
      };
}

class Light {
  Light({
    required this.scaffoldBackgroundColor,
    required this.appBar,
    required this.colorScheme,
    required this.fontName,
    required this.googleFont,
    this.bgcolorGradient,
  });

  final String? scaffoldBackgroundColor;
  final AppBar? appBar;
  final LightColorScheme? colorScheme;
  final String? fontName;
  final bool? googleFont;
  final BgColorGradient? bgcolorGradient;

  factory Light.fromJson(Map<String, dynamic> json) {
    return Light(
      scaffoldBackgroundColor: json["scaffoldBackgroundColor"],
      appBar: json["appBar"] == null ? null : AppBar.fromJson(json["appBar"]),
      colorScheme: json["colorScheme"] == null
          ? null
          : LightColorScheme.fromJson(json["colorScheme"]),
      fontName: json["fontName"],
      googleFont: json["googleFont"],
      bgcolorGradient: json["bgcolorGradient"] == null
          ? null
          : BgColorGradient.fromJson(json["bgcolorGradient"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "scaffoldBackgroundColor": scaffoldBackgroundColor,
        "appBar": appBar?.toJson(),
        "colorScheme": colorScheme?.toJson(),
        "fontName": fontName,
        "googleFont": googleFont,
        "bgcolorGradient": bgcolorGradient?.toJson(),
      };
}

class LightColorScheme {
  LightColorScheme({
    required this.primary,
    required this.surface,
    required this.secondary,
    required this.tertiary,
    required this.ontertiary,
  });

  final String? primary;
  final String? surface;
  final String? secondary;
  final String? tertiary;
  final String? ontertiary;

  factory LightColorScheme.fromJson(Map<String, dynamic> json) {
    return LightColorScheme(
      primary: json["primary"],
      surface: json["surface"],
      secondary: json["secondary"],
      tertiary: json["tertiary"],
      ontertiary: json["ontertiary"],
    );
  }

  Map<String, dynamic> toJson() => {
        "primary": primary,
        "surface": surface,
        "secondary": secondary,
        "tertiary": tertiary,
        "ontertiary": ontertiary,
      };
}

class BgColorGradient {
  final String top;
  final String middle;
  final String bottom;

  BgColorGradient({
    required this.top,
    required this.middle,
    required this.bottom,
  });

  factory BgColorGradient.fromJson(Map<String, dynamic> json) {
    return BgColorGradient(
      top: json['top'] ?? '',
      middle: json['middle'] ?? '',
      bottom: json['bottom'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'top': top,
      'middle': middle,
      'bottom': bottom,
    };
  }
}
