library helping_hand;

import 'package:flutter/material.dart';

class HelpingHand {
  HelpingHand._privateConstructor();
  static final HelpingHand _instance = HelpingHand._privateConstructor();

  ///Get instance to show an alert dialog.
  static HelpingHand get instance => _instance;

  ///Show confirmation dialog.
  showConfirmationDialog(
      {required String message,
      required BuildContext context,
      TextStyle? style,
      required Widget onConfirm,
      onCancel}) async {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(message),
        contentTextStyle: style ??
            const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        actions: [
          onCancel,
          onConfirm,
        ],
      ),
    );
  }

  ///Show error dialog
  void showError(
      {required String message,
      required BuildContext context,
      TextStyle? style}) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        duration: const Duration(seconds: 4),
        backgroundColor: Colors.red,
        dismissDirection: DismissDirection.up,
      ),
    );
  }

  ///Show warning dialog
  void showWarning(
      {required String message,
      required BuildContext context,
      TextStyle? style}) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        duration: const Duration(seconds: 4),
        backgroundColor: Colors.yellow,
        dismissDirection: DismissDirection.up,
      ),
    );
  }

  ///Show success dialog
  void showSuccess(
      {required String message,
      required BuildContext context,
      TextStyle? style}) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        duration: const Duration(seconds: 4),
        backgroundColor: Colors.green,
        dismissDirection: DismissDirection.up,
      ),
    );
  }

  ///Show information dialog
  void showInfo(
      {required String message,
      required BuildContext context,
      TextStyle? style}) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        duration: const Duration(seconds: 4),
        backgroundColor: Colors.blue,
        dismissDirection: DismissDirection.up,
      ),
    );
  }
}
