import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map_template/common/color_util.dart';

/// app主题设置
class AppThemeStyle {
  // 调色板
  static Color blue = colorHex('#007AFF');
  static Color green = colorHex('#28CD41');
  static Color red = colorHex('#FF3B30');
  static Color orange = colorHex('#FF9500');
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color darkGrey = colorHex('#1c1c1e');
  static Color clearGrey = colorHex('#EBEBF5').withOpacity(.5);
  static Color blurGrey = darkGrey.withOpacity(.6);

  static BorderRadius borderRadius = BorderRadius.circular(10);

  /// 主题
  static ThemeData appTheme = ThemeData(
    fontFamily: 'Harmony',

    // 去除安卓样式中的水波纹
    platform: TargetPlatform.iOS,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,

    primaryColor: white,
    scaffoldBackgroundColor: black,

    // AppBar样式
    appBarTheme: const AppBarTheme(
      // 手机状态栏样式
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, // 图标颜色
        statusBarColor: Colors.transparent, // 背景颜色
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),

    // // 字体样式
    // textTheme: TextTheme(
    //   displayLarge: TextStyle(
    //     color: white,
    //     fontSize: 30,
    //     height: 1.1,
    //     fontWeight: FontWeight.bold,
    //   ),

    //   displayMedium: TextStyle(
    //     color: white,
    //     fontSize: 20,
    //     height: 1.1,
    //     fontWeight: FontWeight.bold,
    //   ),

    //   bodyLarge: TextStyle(
    //     color: white,
    //     fontSize: 17,
    //     height: 1.1,
    //   ),

    //   // 副标题字体样式
    //   titleMedium: TextStyle(
    //     color: white,
    //     fontSize: 15,
    //     fontWeight: FontWeight.bold,
    //     height: 1.1,
    //   ),

    //   titleSmall: TextStyle(
    //     color: white,
    //     fontSize: 10,
    //     height: 1.1,
    //     fontWeight: FontWeight.bold,
    //   ),

    //   bodySmall: TextStyle(
    //     color: white,
    //     fontSize: 12,
    //     height: 1.6,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ),

    // Button样式
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
    ),
  );
}
