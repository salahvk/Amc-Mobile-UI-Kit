import 'dart:io';
import 'package:amc_ui_kit/utils/maps_and_location/determine_position.dart';
import 'package:location/location.dart';

import 'package:url_launcher/url_launcher.dart';

Future<void> launchMapDirections(String lat, String long) async {
  try {
    LocationData? locationData = await determinePosition();
    String _mapurl =
        'https://www.google.com/maps/dir/?api=1&origin=${locationData?.latitude},${locationData?.longitude}&destination=$lat,$long&travelmode=driving';
    if (Platform.isIOS) {
      _mapurl =
          'http://maps.apple.com/?saddr=${locationData?.latitude},${locationData?.longitude}&daddr=$lat,$long&dirflg=d';
    }

    final Uri _url = Uri.parse(_mapurl);

    await launchUrl(_url, mode: LaunchMode.externalApplication);
  } on Exception catch (_) {}
}
