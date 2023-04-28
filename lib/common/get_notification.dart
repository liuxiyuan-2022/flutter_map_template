import 'package:flutter/material.dart';
import 'package:flutter_map_template/widgets/app_bottomsheet_box.dart';
import 'package:get/get.dart';

class GetNotification {
  /// 显示自定义的GetBottomSheet
  static Future<T?> showCustomBottomSheet<T>({
    required String title,
    String? message,
    String? confirmTitle,

    /// 确认按钮
    Color? confirmBorderColor,
    Color? confirmTextColor,
    required Function() confirmOnTap,

    /// 取消按钮
    Color? cancelBorderColor,
    Color? cancelTextColor,
    String? cancelTitle,
    Function()? cancelOnTap,

    /// 自定义组件
    List<Widget> children = const <Widget>[],

    /// 是否可以滑动关闭
    bool? enableDrag,
  }) {
    return Get.bottomSheet(
      AppBottomSheetBox(
        title: title,
        message: message,
        confirmTitle: confirmTitle,
        confirmTextColor: confirmTextColor,
        confirmBorderColor: confirmBorderColor,
        confirmOnTap: confirmOnTap,
        cancelTitle: cancelTitle,
        cancelTextColor: cancelTextColor,
        cancelBorderColor: cancelBorderColor,
        cancelOnTap: cancelOnTap,
        children: children,
      ),
      ignoreSafeArea: true,
      isScrollControlled: true, // 是否支持全屏弹出
      barrierColor: Colors.black12,
      isDismissible: false, // 点击背景是否可以关闭
      enableDrag: enableDrag ?? false, // 是否可以滑动关闭
    );
  }
}
