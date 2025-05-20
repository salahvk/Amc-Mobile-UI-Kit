import 'dart:io';
import 'package:amc_ui_kit/app/model/device_info_model.dart';
import 'package:device_info_plus/device_info_plus.dart';

DeviceInfoModel deviceInfoModel = DeviceInfoModel();
Future<void> getDeviceInformation() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    deviceInfoModel.platform = 'Android';
    deviceInfoModel.deviceId = androidInfo.id;
    deviceInfoModel.serialNo = androidInfo.serialNumber;
    deviceInfoModel.brand = androidInfo.brand;
    deviceInfoModel.model = androidInfo.model;
    deviceInfoModel.isPhysicalDevice = androidInfo.isPhysicalDevice.toString();
    deviceInfoModel.device = androidInfo.device;
    deviceInfoModel.fingerPrint = androidInfo.fingerprint;
    deviceInfoModel.androidVersion = androidInfo.version.release;
    deviceInfoModel.sdkVersion = androidInfo.version.sdkInt;
  } else {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    deviceInfoModel.platform = 'IOS';
    deviceInfoModel.deviceId = iosInfo.identifierForVendor;
    deviceInfoModel.serialNo = 'Unavailable on IOS';
    deviceInfoModel.brand = iosInfo.utsname.machine;
    deviceInfoModel.model = iosInfo.model;
    deviceInfoModel.isPhysicalDevice = iosInfo.isPhysicalDevice.toString();
    deviceInfoModel.iosSystemVersion = iosInfo.systemVersion;
  }
}
