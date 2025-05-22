import 'dart:io';
import 'package:amc_ui_kit/amc_ui_kit.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

Future<String> pickImage(
    {required BuildContext context, required Device device}) async {
  final ImagePicker imagepicker = ImagePicker();

  String pickedImagePath = '';

  await MobileCustomDialogs.showbottomSheet(
    context,
    Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Choose Image From",
            ),
            const AMCSizedBox.h24(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image,
                        size: 30,
                      ),
                      AMCSizedBox.h4(),
                      Text(
                        "Gallery",
                      )
                    ],
                  ),
                  onTap: () async {
                    XFile? image = await imagepicker.pickImage(
                        source: ImageSource.gallery);

                    if (image != null) {
                      File pickedImage = File(image.path);

                      pickedImagePath = pickedImage.path;
                      CroppedFile? croppedFile =
                          await _cropImage(pickedImage.path, device, context);
                      pickedImagePath = croppedFile?.path ?? "";
                      context.pop();
                    }
                  },
                ),
                InkWell(
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera,
                        size: 30,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Camera",
                      )
                    ],
                  ),
                  onTap: () async {
                    XFile? image =
                        await imagepicker.pickImage(source: ImageSource.camera);

                    if (image != null) {
                      File pickedImage = File(image.path);
                      CroppedFile? croppedFile =
                          await _cropImage(pickedImage.path, device, context);
                      pickedImagePath = croppedFile?.path ?? "";
                      context.pop();
                    }
                  },
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    ),
  );

  return pickedImagePath;
}

Future<CroppedFile?> _cropImage(
    filePath, Device device, BuildContext context) async {
  CroppedFile? croppedImage = await ImageCropper().cropImage(
      sourcePath: filePath,
      maxWidth: 1080,
      maxHeight: 1080,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Crop',
            activeControlsWidgetColor: device == Device.mobile
                ? PaletteMobile.primaryColor(context)
                : PaletteTab.primaryColor(context),
            toolbarColor: PaletteMobile.whiteColor,
            toolbarWidgetColor: PaletteMobile.blackColor,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Crop',
        ),
      ]);
  if (croppedImage != null) {
    return croppedImage;
  }
  return null;
}
