import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nyt/config/config.dart';

final dioBuilderProvider = Provider<Dio>(
  (ref) => DioBuilder.getInstance(ref: ref),
);

class DioBuilder extends DioMixin implements Dio {
  // create basic information for request
  final String contentType = 'application/json';
  final int connectionTimeOutMls = 30000;
  final int readTimeOutMls = 30000;
  final int writeTimeOutMls = 30000;

  static DioBuilder getInstance(
          {bool isRequestToken = false, Ref? ref, BaseOptions? options}) =>
      DioBuilder._(isRequestToken, ref, options);

  DioBuilder._(bool isRequestToken, Ref? ref, [BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: options == null || options.baseUrl.isEmpty
          ? AppString.nytBaseUrl
          : options.baseUrl,
      contentType: options?.contentType ?? contentType,
      connectTimeout: connectionTimeOutMls,
      receiveTimeout: readTimeOutMls,
      sendTimeout: writeTimeOutMls,
    );

    this.options = options;
    httpClientAdapter = DefaultHttpClientAdapter();
  }
}
