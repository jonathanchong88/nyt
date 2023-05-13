import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkInfoProvider = Provider<NetworkInfo>(
  (ref) => ConnectivityNetworkInfo(
    Connectivity(),
  ),
);

abstract class NetworkInfo {
  Future<bool> get isConnected;
  init();
}

class ConnectivityNetworkInfo implements NetworkInfo {
  final Connectivity _connectivity;
  //`_isInitialized` is used to ensure that the listeners are only called once
  bool _isInitialized = false;

  ConnectivityNetworkInfo(this._connectivity);
  @override
  Future<bool> get isConnected async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  @override
  init() {
    if (_isInitialized) return;
    _isInitialized = true;
  }
}
