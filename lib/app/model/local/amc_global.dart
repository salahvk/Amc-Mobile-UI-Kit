import 'package:amc_ui_kit/app/model/app_config_model/app_config_model.dart';
import 'package:amc_ui_kit/app/model/local/firebase_theme_config.dart';
import 'package:amc_ui_kit/app/styles/palette_colors.dart';

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
