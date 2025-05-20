import 'package:flutter/material.dart';

class MobileCustomDialogs {
  static showbottomSheet(BuildContext context, Widget widget) {
    return showModalBottomSheet(
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (context) => widget,
    );
  }
}

class TabCustomDialogs {
  static showbottomSheet(BuildContext context, Widget widget,
      {bool isDismissible = true, bool isDragable = true}) {
    return showModalBottomSheet(
      useSafeArea: true,
      isDismissible: isDismissible,
      enableDrag: isDragable,
      backgroundColor: Colors.transparent,
      constraints: const BoxConstraints(
        maxWidth: double.infinity,
      ),
      context: context,
      isScrollControlled: true,
      builder: (context) => widget,
    );
  }
}
