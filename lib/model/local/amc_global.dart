import 'package:amc_ui_kit/model/app_config_model/app_config_model.dart';
import 'package:amc_ui_kit/model/local/firebase_theme_config.dart';
import 'package:amc_ui_kit/styles/palette_colors.dart';

class AMCGlobal {
  FirebaseThemeConfig? firebaseThemeConfig;
  AppConfigModel? appConfigModel;
  PaletteMobile? paletteMobile;
  PaletteTab? paletteTab;
  AMCGlobal(
      {this.firebaseThemeConfig,
      this.appConfigModel,
       this.paletteMobile,
       this.paletteTab});
}
