import 'package:json_annotation/json_annotation.dart';

import 'amc_info.dart';
import 'app_theme.dart';
import 'bottomnav.dart';
import 'navconfig.dart';
import 'settings.dart';
import 'tab_theme.dart';
import 'top_bar_nav.dart';

part 'configuration.g.dart';

@JsonSerializable()
class Configuration {
  AmcInfo? amcInfo;
  @JsonKey(name: 'AppTheme')
  AppTheme? appTheme;
  @JsonKey(name: 'TabTheme')
  TabTheme? tabTheme;
  Bottomnav? bottomnav;
  TopBarNav? topBarNav;
  Settings? settings;
  Navconfig? navconfig;

  Configuration({
    this.amcInfo,
    this.appTheme,
    this.tabTheme,
    this.bottomnav,
    this.topBarNav,
    this.settings,
    this.navconfig,
  });

  @override
  String toString() {
    return 'Configuration(amcInfo: $amcInfo, appTheme: $appTheme, tabTheme: $tabTheme, bottomnav: $bottomnav, topBarNav: $topBarNav, settings: $settings, navconfig: $navconfig)';
  }

  factory Configuration.fromJson(Map<String, dynamic> json) {
    return _$ConfigurationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);

  Configuration copyWith({
    AmcInfo? amcInfo,
    AppTheme? appTheme,
    TabTheme? tabTheme,
    Bottomnav? bottomnav,
    TopBarNav? topBarNav,
    Settings? settings,
    Navconfig? navconfig,
  }) {
    return Configuration(
      amcInfo: amcInfo ?? this.amcInfo,
      appTheme: appTheme ?? this.appTheme,
      tabTheme: tabTheme ?? this.tabTheme,
      bottomnav: bottomnav ?? this.bottomnav,
      topBarNav: topBarNav ?? this.topBarNav,
      settings: settings ?? this.settings,
      navconfig: navconfig ?? this.navconfig,
    );
  }
}
