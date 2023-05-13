import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.offline() = _Offline;
  const factory Failure.serverError(String? errorMessage) = _ServerError;
  const factory Failure.unexpectedDataError() = _UnexpectedDataError;
}

extension NetworkHandler on DioError {
  Failure handleFailure() {
    if (error is SocketException ||
        type == DioErrorType.connectTimeout ||
        type == DioErrorType.other) {
      return const Failure.offline();
    }

    switch (response!.statusCode) {
      case 400:
      // return Failure.badState(tempFailureResponse);
      case 500:
        return Failure.serverError(response!.statusMessage);
      case 401:
      // return Failure.unauthorizedAccess(tempFailureResponse);
      case 409:
      // return const Failure.duplicatedUser();
      default:
        return const Failure.unexpectedDataError();
    }
  }
}

extension FailureMapper on Failure {
  String failureMessage() => map(
        offline: (s) => '',
        // authenticationFailure: (s) => 'Authentication failure',
        serverError: (s) =>
            s.errorMessage ?? 'Server error, please try again later!',
        unexpectedDataError: (s) => 'Unexpected data error',
      );
}
