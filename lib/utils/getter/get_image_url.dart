import 'package:amc_ui_kit/model/local/amc_global.dart';

String getImageUrl(String imageUrl, AMCGlobal amcGlobal) {
  String baseURL =
      amcGlobal.appConfigModel?.data?.configuration?.settings?.baseImageUrl ??
          "";
  return baseURL + imageUrl;
}
