import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:core/core/function/main_secure_storage.dart';

class MainFunction with MainSecureStorage {
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

  void snackBar(
    BuildContext context, {
    required Widget content,
    Color? backgroundColor,
    Duration? duration,
    EdgeInsetsGeometry? padding,
    ShapeBorder? shape,
    double? width,
  }) {
    duration ??= Duration(milliseconds: 4000);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: content,
        duration: duration,
        padding: padding,
        shape: shape,
        width: width,
      ),
    );
  }

  void onChangeThemeMode(BuildContext context, {ThemeMode? themeMode}) {
    if (themeMode != null) return Get.changeThemeMode(themeMode);
    if (Theme.of(context).brightness == Brightness.light) {
      Get.changeThemeMode(ThemeMode.dark);
    } else {
      Get.changeThemeMode(ThemeMode.light);
    }
  }
}
