import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:core/core/function/main_secure_storage.dart';

class MainFunction with MainSecureStorage {
  static final MainFunction _instance = MainFunction._internal();
  factory MainFunction() => _instance;
  MainFunction._internal();

  Color mainBackgroundColor = Colors.white;

  Future bottomSheet({
    required Widget content,
    double? width,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    bool? isDismissible,
    bool? isScrollController,
    ShapeBorder? shape,
  }) async {
    width ??= double.infinity;
    padding ??= EdgeInsets.all(16);
    backgroundColor ??= mainBackgroundColor;
    isDismissible ??= true;
    isScrollController ??= false;

    return await Get.bottomSheet(
      Container(width: width, padding: padding, child: content),
      backgroundColor: backgroundColor,
      isDismissible: isDismissible,
      isScrollControlled: isScrollController,
      shape: shape,
    );
  }

  Future dialog({
    required Widget content,
    Color? backgroundColor,
    EdgeInsets? insetPadding,
    bool? barrierDismissible,
  }) async {
    backgroundColor ??= mainBackgroundColor;
    barrierDismissible ??= true;

    return await Get.dialog(
      Dialog(
        backgroundColor: backgroundColor,
        insetPadding: insetPadding,
        child: content,
      ),
      barrierDismissible: barrierDismissible,
    );
  }

  void snackBar({
    required Widget content,
    Color? backgroundColor,
    Duration? duration,
    EdgeInsetsGeometry? padding,
    ShapeBorder? shape,
    double? width,
  }) {
    duration ??= Duration(seconds: 5);

    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: content,
        backgroundColor: mainBackgroundColor,
        duration: duration,
        padding: padding,
        shape: shape,
        width: width,
      ),
    );
  }
}
