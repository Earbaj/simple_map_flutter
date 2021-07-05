import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController map_controller;
  final LatLng _center = const LatLng(23.810332, 90.4125181);

  void onMapController(GoogleMapController controller){
    map_controller = controller;
  }
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        onMapCreated: onMapController,
        initialCameraPosition: CameraPosition(target: _center, zoom: 11.0)
    );
  }
}