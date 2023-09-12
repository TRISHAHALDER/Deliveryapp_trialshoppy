import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> Latlng = [LatLng(25.6154, 85.1010), LatLng(25.617668163,  85.1738636009)];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _kGooglePlex = CameraPosition(target: Latlng[0], zoom: 14);
  final Set<Marker> _markers = {};
  final Set<Polyline> _polyline = {};
  List<LatLng> latlng = [LatLng(25.6154, 85.1010), LatLng(25.6754, 86.1010)];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < latlng.length; i++) {
      _markers.add(Marker(
        markerId: MarkerId(i.toString()),
        position: latlng[i],
        infoWindow: InfoWindow(title: "patna", snippet: "BSPHCL Energy Park"),
        icon: BitmapDescriptor.defaultMarker,
      ));
      setState(() {});
       _polyline.add(Polyline(
      polylineId: PolylineId('1'),
      points: latlng,
      color: Colors.purple
    ));
    }
   
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        markers: _markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        myLocationEnabled: true,
        initialCameraPosition: _kGooglePlex,
        mapType: MapType.normal,
        polylines: _polyline,
      ),
    );
  }

  // addMarker(String id, LatLng location) {
  //   var marker = Marker(
  //       markerId: MarkerId(id),
  //       position: location,
  //       infoWindow:
  //           const InfoWindow(title: 'Place Name', snippet: 'Description'));
  //   _markers[id] = marker;
  //   setState(() {});
  // }
}
