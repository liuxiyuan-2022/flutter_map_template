import 'dart:developer';
import 'dart:ffi';

import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionService extends GetxService {
  static PermissionService get to => Get.find();

  Future<PermissionService> init() async {
    requestLocation();
    return this;
  }

  /// 申请定位权限
  Future<bool> requestLocation() async {
    var status = await Permission.location.request();

    if (status == PermissionStatus.granted) {
      return true;
    } else {
      return false;
    }
  }
}
