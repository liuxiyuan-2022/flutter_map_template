import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map_template/controller/amap_service.dart';
import 'package:flutter_map_template/controller/permission_service.dart';
import 'package:flutter_map_template/pages/home/home_page.dart';
import 'package:flutter_map_template/style/app_theme.dart';
import 'package:get/get.dart';

void main() async {
  initServices();
  runApp(const MyApp());
  SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  );
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

void initServices() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(PermissionService());
  Get.put(AMapService());

  await Get.putAsync(() => PermissionService().init());
  await Get.putAsync(() => AMapService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeStyle.appTheme,
      home: const HomePage(),
    );
  }
}
