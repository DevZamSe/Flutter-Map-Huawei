/*
    Copyright 2020. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

import 'package:flutter/material.dart';
// import 'package:huawei_map_example/components/circleDemo.dart';
// import 'package:huawei_map_example/components/groundOverlayDemo.dart';
// import 'package:huawei_map_example/components/markerDemo.dart';
// import 'package:huawei_map_example/components/polygonDemo.dart';
// import 'package:huawei_map_example/components/polylineDemo.dart';
// import 'package:huawei_map_example/components/tileOverlayDemo.dart';
// import 'package:huawei_map_example/huaweiMapDemo.dart';
//
// import 'package:huawei_maps/customWidgets/customWidgets.dart';

import 'package:huawei_map/components/components.dart';
import 'package:huawei_map/map.dart';

void main() =>
    runApp(MaterialApp(title: "Hms Map Flutter Plugin Demo", home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HuaweiMapController mapController;
  double top = 0.0;
  double distance = 0.0;
  bool hmsLoggerStatus = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new Scaffold(
      body: Container(
        width: 200.0,
        height: 200.0,
        child: HuaweiMap(
          initialCameraPosition: CameraPosition(target: LatLng(41.012959, 28.997438), zoom: 12),
          onMapCreated: (HuaweiMapController controller){
            mapController = controller;
          },
          mapType: MapType.normal,
          tiltGesturesEnabled: true,
          buildingsEnabled: true,
          compassEnabled: true,
          zoomControlsEnabled: true,
          rotateGesturesEnabled: true,
          myLocationButtonEnabled: false,
          myLocationEnabled: true,
          trafficEnabled: true,
        ),
      )
    );
  }
}