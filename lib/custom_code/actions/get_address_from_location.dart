// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geocoding/geocoding.dart';

Future<dynamic> getAddressFromLocation(LatLng liveLocation) async {
  // Add your function code here!
  List<Placemark> placeList = await placemarkFromCoordinates(
      liveLocation.latitude, liveLocation.longitude);
  if (placeList.isNotEmpty) {
    Placemark place = placeList.first;
    return {
      "status": true,
      "latitude": liveLocation.latitude.toString(),
      "longitude": liveLocation.longitude.toString(),
      "city": place.locality ?? "Unknown",
      "state": place.administrativeArea ?? "Unknown",
      "country": place.country ?? "Unknown",
    };
  } else {
    Placemark place = placeList.first;
    return {
      "status": false,
      "latitude": liveLocation.latitude.toString(),
      "longitude": liveLocation.longitude.toString(),
      "city": place.locality ?? "Unknown",
      "state": place.administrativeArea ?? "Unknown",
      "country": place.country ?? "Unknown",
    };
  }
}
