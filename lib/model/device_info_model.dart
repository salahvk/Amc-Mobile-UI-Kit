class DeviceInfoModel {
  String? version;
  String? versionCode;
  String? platform;
  String? deviceId;
  String? serialNo;
  String? brand;
  String? model;
  String? language;
  String? country;
  String? buildNumber;
  String? buildSignature;
  String? installerStore;
  String? androidVersion;
  String? iosVersion;
  String? isPhysicalDevice;
  String? device;
  String? fingerPrint;
  String? iosSystemVersion;
  int? sdkVersion;
  DeviceInfoModel(
      {this.versionCode,
      this.version,
      this.platform,
      this.brand,
      this.country,
      this.deviceId,
      this.language,
      this.model,
      this.serialNo,
      this.buildNumber,
      this.installerStore,
      this.iosVersion,
      this.androidVersion,
      this.buildSignature,
      this.isPhysicalDevice,
      this.device,
      this.fingerPrint,
      this.iosSystemVersion,
      this.sdkVersion});
}
