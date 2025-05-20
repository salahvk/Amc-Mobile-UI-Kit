import 'dart:io';

import 'package:flutter/services.dart';
import 'package:platform_device_id_v3/platform_device_id.dart';

Future<String> deviceID() async {
  String? deviceId;
  try {
    deviceId = await PlatformDeviceId.getDeviceId;
  } on PlatformException {
    deviceId = 'Failed to get deviceId.';
  }

  return deviceId ?? "Failed to get deviceId.";
}

String deviceType() {
  String? deviceType;
  if (Platform.isIOS) {
    deviceType = "ios";
  } else if (Platform.isAndroid) {
    deviceType = "android";
  }

  return deviceType ?? "Failed to get deviceType";
}
