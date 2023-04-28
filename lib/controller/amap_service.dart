import 'dart:async';

import 'package:amap_flutter_base/amap_flutter_base.dart';
import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map_template/api/token/amap.dart';
import 'package:flutter_map_template/common/get_notification.dart';
import 'package:flutter_map_template/controller/permission_service.dart';
import 'package:flutter_map_template/widgets/app_bottomsheet_box.dart';
import 'package:get/get.dart';

class AMapService extends GetxService {
  static AMapService get to => Get.find();

  Future<AMapService> init() async {
    AMapFlutterLocation.setApiKey(_androidKey, _iosKey);
    return this;
  }

  static final String _androidKey = amapAndroidApiKey;
  static final String _iosKey = amapiosApiKey;

  AMapPrivacyStatement aMapPrivacyStatement = const AMapPrivacyStatement(
      hasContains: true, hasShow: true, hasAgree: true);

  AMapApiKey aMapApiKey = AMapApiKey(androidKey: _androidKey, iosKey: _iosKey);

  AMapController? aMapController;

  /// 初始化定位信息
  void initLocation() async {
    if (await PermissionService.to.requestLocation()) {}
  }

  /// 初始化地图组件
  void initMapWidget(AMapController controller) async {
    aMapController = controller;
    setMoveCamera(CameraUpdate.zoomIn());
    await aMapController!.setRenderFps(60);
  }

  /// 设置移镜头地图视角
  void setMoveCamera(CameraUpdate cameraUpdate) async {
    await aMapController?.moveCamera(
      cameraUpdate,
      duration: 450,
    );
  }

  /// 选择地图样式
  void switchMapType() {
    Get.bottomSheet(AppBottomSheetBox(title: 'title', confirmOnTap: () {}));
  }
}
