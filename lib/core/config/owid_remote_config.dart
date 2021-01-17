import 'package:dio/dio.dart';

/// Config for the remote service
class OwidRemoteConfig extends BaseOptions {
  static const networkConnectTimeout = 5000;
  static const networkSendTimeout = 8000;
  static const networkReceiveTimeout = 8000;

  OwidRemoteConfig()
      : super(
    baseUrl: 'https://covid.ourworldindata.org/data',
    connectTimeout: networkConnectTimeout,
    sendTimeout: networkSendTimeout,
    receiveTimeout: networkReceiveTimeout,
  );
}


