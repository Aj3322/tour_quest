import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearbyLocationMap extends StatefulWidget {
  @override
  _NearbyLocationMapState createState() => _NearbyLocationMapState();
}

class _NearbyLocationMapState extends State<NearbyLocationMap> {
  late GoogleMapController _mapController;
  final LatLng _initialPosition = LatLng(37.7749, -122.4194); // Initial map position
  Set<Marker> _markers = Set<Marker>();

  @override
  void initState() {
    super.initState();
    // Add a marker for a nearby location
    _addMarker(LatLng(37.773972, -122.431297), 'Nearby Location');
  }

  void _addMarker(LatLng position, String title) {
    final marker = Marker(
      markerId: MarkerId(position.toString()),
      position: position,
      infoWindow: InfoWindow(title: title),
    );
    setState(() {
      _markers.add(marker);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Location Map'),
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: _initialPosition,
          zoom: 12.0,
        ),
        markers: _markers,
      ),
    );
  }
}
