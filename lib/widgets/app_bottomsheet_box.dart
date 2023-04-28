import 'package:flutter/material.dart';
import 'package:flutter_map_template/style/app_theme.dart';
import 'package:get/get.dart';

/// BottomSheet外框样式
class AppBottomSheetBox extends StatelessWidget {
  const AppBottomSheetBox({
    Key? key,
    this.children = const <Widget>[],
    this.boxShadow,
    this.backgroundColor,
    required this.title,
    this.message,
    this.confirmTitle,
    this.confirmBorderColor,
    this.confirmTextColor,
    required this.confirmOnTap,
    this.cancelBorderColor,
    this.cancelTextColor,
    this.cancelTitle,
    this.cancelOnTap,
  }) : super(key: key);

  final String title;
  final String? message;
  final List<Widget> children; // 自定义组件
  final List<BoxShadow>? boxShadow;
  final Color? backgroundColor;

  /// 确认按钮
  final Color? confirmBorderColor;
  final Color? confirmTextColor;
  final String? confirmTitle;
  final Function() confirmOnTap;

  /// 取消按钮
  final Color? cancelBorderColor;
  final Color? cancelTextColor;
  final String? cancelTitle;
  final Function()? cancelOnTap;

  @override
  Widget build(BuildContext context) {
    EdgeInsets safeMargin;

    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppThemeStyle.borderRadius,
        boxShadow: boxShadow ?? [],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 标题
          Text(
            title,
            // style: Theme.of(Get.context!).textTheme,
          ).marginOnly(bottom: 5),
          // 内容
          message == null
              ? const SizedBox()
              : Text(
                  message ?? '',
                  textAlign: TextAlign.center,
                  style: Theme.of(Get.context!).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.normal,
                        height: 1.3,
                        color: AppThemeStyle.clearGrey,
                      ),
                ).marginSymmetric(vertical: 15),

          // 自定义组件
          Visibility(
            visible: children.isEmpty ? false : true,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: children,
            ).marginSymmetric(vertical: 10),
          ),
        ],
      ),
    );
  }
}
