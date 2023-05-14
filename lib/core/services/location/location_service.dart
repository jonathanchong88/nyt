import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_service.g.dart';

@Riverpod()
LocationService locationService(LocationServiceRef ref) {
  final locationService = LocationService(ref);
  return locationService;
}

abstract class ILocationService {
  Future<Position?> getCurrentPosition();
}

class LocationService implements ILocationService {
  late Ref ref;
  late bool serviceEnabled;
  late LocationPermission permission;

  LocationService(this.ref);

  @override
  Future<Position?> getCurrentPosition() async {
    Position? currentPosition;
    bool hasPermission = await _handleLocationPermission();

    if (!hasPermission) {
      Fluttertoast.showToast(
        msg: "please enable location permission!",
        toastLength: Toast.LENGTH_SHORT,
      );
    } else {
      await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.high)
          .then((Position position) {
        currentPosition = position;
      }).catchError((e) {});
    }

    return currentPosition;
  }

  _locationCheck() async {
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    permission = await Geolocator.checkPermission();

    if (!serviceEnabled) {
      Geolocator.openLocationSettings();
    }

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      Geolocator.openAppSettings();
    }
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    _listenLocationOnChanged();

    permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.denied) {
      return false;
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return false;
    }

    return true;
  }

  void _listenLocationOnChanged() {
    Geolocator.getServiceStatusStream().listen((ServiceStatus status) {
      if (status.name == 'disabled') {
        Fluttertoast.showToast(
          msg: "please enable location permission!",
          toastLength: Toast.LENGTH_SHORT,
        );
      }
    });
  }
}
