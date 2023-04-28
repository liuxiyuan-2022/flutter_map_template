import 'dart:ui';

import 'package:amap_flutter_base/amap_flutter_base.dart';
import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map_template/controller/amap_service.dart';
import 'package:flutter_map_template/pages/home/controller.dart';
import 'package:flutter_map_template/style/app_theme.dart';
import 'package:flutter_map_template/widgets/class_blur_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(preferredSize: Size.zero, child: AppBar()),
      body: Stack(
        children: [
          /// 地图组件
          AMapWidget(
            apiKey: AMapService.to.aMapApiKey,
            privacyStatement: AMapService.to.aMapPrivacyStatement,
            mapType: MapType.normal,
            // limitBounds:
            //     LatLngBounds(northeast:const LatLng(-90.0, 90.0), southwest: null),
            onMapCreated: (controller) {
              AMapService.to.initMapWidget(controller);
            },
          ),
          Stack(
            children: [
              /// 侧边控制按钮
              Positioned(
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () => AMapService.to.switchMapType(),
                        icon: FaIcon(
                          FontAwesomeIcons.solidMap,
                          color: AppThemeStyle.blurGrey,
                          size: 20,
                        ),
                      ),
                      Container(
                        width: 30,
                        height: .5,
                        color: AppThemeStyle.blurGrey,
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: FaIcon(
                          FontAwesomeIcons.locationArrow,
                          color: AppThemeStyle.blurGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ).paddingOnly(top: 50, left: 15, right: 15),

          /// 任务栏背景模糊
          ClassBlurContainer(
            width: MediaQuery.of(context).size.width,
            height: MediaQueryData.fromWindow(window).padding.top + 3,
          ),
        ],
      ),
    );
  }
}
