import 'package:amc_ui_kit/app/utils/info/get_device_info.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future getVersionInfo() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  deviceInfoModel.version = packageInfo.version;
  deviceInfoModel.buildNumber = packageInfo.buildNumber;
  deviceInfoModel.versionCode = packageInfo.version.replaceAll('.', '');
  deviceInfoModel.buildSignature = packageInfo.buildSignature;
  deviceInfoModel.installerStore = packageInfo.installerStore;
  // versionNumber.value = defaultAppEnvironment == Environment.PROD
  //     ? "App version ${packageInfo.version}"
  //     : "Development Mode - v${packageInfo.version}+b${packageInfo.buildNumber}";
}
