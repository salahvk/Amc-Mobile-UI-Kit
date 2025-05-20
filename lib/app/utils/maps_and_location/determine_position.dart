import 'package:amc_ui_kit/app/utils/custom_snackbar.dart';
import 'package:location/location.dart';

Future<LocationData?> determinePosition() async {
  Location location = Location();

  bool serviceEnabled;
  PermissionStatus permissionGranted;
  LocationData? locationData;

  serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      SnackBarFailure(messageText: 'Location services are disabled.').show();
      return Future.error('Location services are disabled.');
    }
  }

  permissionGranted = await location.hasPermission();
  if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();

    if (permissionGranted != PermissionStatus.granted) {
      SnackBarFailure(messageText: 'Location permissions are denied').show();
      return Future.error('Location permissions are denied');
    }
  }

  if (permissionGranted == PermissionStatus.deniedForever) {
    SnackBarFailure(
            messageText:
                'Location permissions are permanently denied, we cannot request permissions.')
        .show();
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  locationData = await location.getLocation();

  return locationData;
}
