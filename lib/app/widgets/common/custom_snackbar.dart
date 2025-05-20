import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class SnackBarSuccess {
  final String messageText;

  SnackBarSuccess({required this.messageText});

  show() {
    toastification.show(
        type: ToastificationType.success,
        title: const Text(
          "Success",
          style: TextStyle(color: Colors.white),
        ),
        description: RichText(text: TextSpan(text: messageText)),
        autoCloseDuration: const Duration(seconds: 3),
        primaryColor: Colors.white,
        backgroundColor: const Color(0xFF3CB34A),
        foregroundColor: Colors.black,
        style: ToastificationStyle.flatColored,
        animationDuration: const Duration(milliseconds: 300),
        showProgressBar: false);
  }
}

class SnackBarFailure {
  final String messageText;

  SnackBarFailure({required this.messageText});

  show() {
    toastification.show(
        type: ToastificationType.error,
        animationDuration: const Duration(milliseconds: 300),
        title: const Text(
          "Failed",
          style: TextStyle(color: Colors.white),
        ),
        description: RichText(text: TextSpan(text: messageText)),
        autoCloseDuration: const Duration(seconds: 3),
        primaryColor: Colors.white,
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
        style: ToastificationStyle.flatColored,
        showProgressBar: false);
  }
}

class SnackBarFailureWithContext {
  final String messageText;

  SnackBarFailureWithContext({required this.messageText});

  show(BuildContext context) {
    toastification.show(
        alignment: Alignment.topCenter,
        context: context,
        type: ToastificationType.error,
        animationDuration: const Duration(milliseconds: 300),
        title: const Text(
          "Failed",
          style: TextStyle(color: Colors.white),
        ),
        description: RichText(text: TextSpan(text: messageText)),
        autoCloseDuration: const Duration(seconds: 3),
        primaryColor: Colors.white,
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
        style: ToastificationStyle.flatColored,
        showProgressBar: false);
  }
}
