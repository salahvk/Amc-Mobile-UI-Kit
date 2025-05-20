import 'dart:io';
import 'package:amc_ui_kit/app/utils/custom_snackbar.dart';
import 'package:amc_ui_kit/app/utils/info/get_device_info.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';


class PdfDownload {
  Future<String?> viewPdf(String fileName, List<int> bytes) async {
    final directory = await getApplicationDocumentsDirectory();
    final sanitizedFileName = fileName.replaceAll(RegExp(r'[\/:*?"<>|]'), '_');
    final filePath = '${directory.path}/$sanitizedFileName.pdf';
    final file = File(filePath);

    await file.writeAsBytes(bytes);
    return file.path;
  }

  Future<(bool, String)> saveToFolder(String sourcePath, String name) async {
    try {
      bool permissionGranted = await _requestPermission();
      if (!permissionGranted) {
        return (false, "Permission denied");
      }
      Directory? directory = await _getDownloadPath();

      if (directory == null) {
        print("Download directory not found");
        return (false, "Download failed");
      }

      final sanitizedFileName = name.replaceAll(RegExp(r'[\/:*?"<>|]'), '_');

      // Define the destination file path
      File destinationFile = File("${directory.path}/$sanitizedFileName.pdf");

      // Delete the existing file if it exists
      if (destinationFile.existsSync()) {
        destinationFile.deleteSync();
      }

      // Copy the file
      final File sourceFile = File(sourcePath);
      await sourceFile.copy(destinationFile.path);

      print('File copied to ${destinationFile.path}');
      return (true, 'The report has been downloaded to your file');
    } catch (e) {
      print('Error copying file: $e');
      return (false, "Download failed");
    }
  }

  Future<Directory?> _getDownloadPath() async {
    Directory? directory;
    try {
      if (Platform.isIOS) {
        directory = await getApplicationDocumentsDirectory();
      } else {
        directory = Directory('/storage/emulated/0/Download/ewfs');
        if (!await directory.exists()) {
          await directory.create(recursive: true);
        }
      }
    } catch (err) {
      print("Cannot get download folder path: $err");
    }

    return directory;
  }

  Future<bool> _requestPermission() async {
    PermissionStatus status = await Permission.storage.status;

    if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    }

    if (Platform.isAndroid) {
      if (status.isDenied) {
        if ((deviceInfoModel.sdkVersion ?? 0) < 33) {
          status = await Permission.storage.request();
        } else {
          status = await Permission.photos.request();
        }
      }
    } else if (Platform.isIOS) {
      if (status.isDenied) {
        status = await Permission.storage.request();
      }
    }

    if (status.isGranted) {
      return true;
    } else {
      debugPrint('Permission denied');
      return false;
    }
  }

  Future sharePDF(String? path) async {
    print(path);
    if (path != null) {
      try {
        await Share.shareXFiles([XFile(path ?? "")],
            text: "Here is the PDF file.");
      } catch (e) {
        SnackBarFailure(
          messageText: "Somthing Went Wrong, Please try again",
        ).show();
      }
    } else {
      SnackBarFailure(
        messageText: "Somthing Went Wrong, Please try again",
      ).show();
    }
  }
}
