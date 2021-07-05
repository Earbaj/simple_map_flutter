import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController map_controller;
  static LatLng _center = const LatLng(25.3412, 89.2752);

  Marker chatraMarker = Marker(
    markerId: MarkerId("Chatra"),
    position: _center,
    infoWindow: InfoWindow(title: "Chatra Bazar"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
  );

  void onMapController(GoogleMapController controller) {
    map_controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        markers: {chatraMarker},
        onMapCreated: onMapController,
        initialCameraPosition: CameraPosition(target: _center, zoom: 11.0));
  }
}
