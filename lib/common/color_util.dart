import 'package:flutter/material.dart';

///hex颜色转换
Color colorHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

String toCssString(Color color) {
  String hexColor;
  hexColor = color.toString().substring(10, color.toString().length - 1);
  return hexColor = "#$hexColor";
}
