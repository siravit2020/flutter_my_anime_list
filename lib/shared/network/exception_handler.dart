// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:flutter_my_anime_list/shared/log/app_logger.dart';

class ExceptionHandler implements Exception {
  static AppException handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      return _handleDioException(error);
    } else {
      // default error
      logger.e(error);
      return const AppException(
        identifier: 'unknown error occurred',
        statusCode: ResponseCode.DEFAULT,
        message: ResponseMessage.DEFAULT,
      );
    }
  }
}

AppException _handleDioException(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return AppException(
        identifier: error.requestOptions.path,
        statusCode: ResponseCode.CONNECT_TIMEOUT,
        message: ResponseMessage.CONNECT_TIMEOUT,
      );
    case DioExceptionType.sendTimeout:
      return AppException(
        identifier: error.requestOptions.path,
        statusCode: ResponseCode.SEND_TIMEOUT,
        message: ResponseMessage.SEND_TIMEOUT,
      );
    case DioExceptionType.receiveTimeout:
      return AppException(
        identifier: error.requestOptions.path,
        statusCode: ResponseCode.RECIEVE_TIMEOUT,
        message: ResponseMessage.RECIEVE_TIMEOUT,
      );
    case DioExceptionType.badResponse:
      if (error.response != null && error.response?.statusCode != null && error.response?.statusMessage != null) {
        return AppException(
          identifier: error.requestOptions.path,
          statusCode: error.response?.statusCode ?? 0,
          // ignore: avoid_dynamic_calls
          message: error.response?.data?['message'].toString() ?? '',
        );
      } else {
        return AppException(
          identifier: error.requestOptions.path,
          statusCode: ResponseCode.DEFAULT,
          message: ResponseMessage.DEFAULT,
        );
      }
    case DioExceptionType.cancel:
      return AppException(
        identifier: error.requestOptions.path,
        statusCode: ResponseCode.CANCEL,
        message: ResponseMessage.CANCEL,
      );
    case DioExceptionType.badCertificate:
      return AppException(
        identifier: error.requestOptions.path,
        statusCode: ResponseCode.DEFAULT,
        message: ResponseMessage.DEFAULT,
      );
    case DioExceptionType.connectionError:
      return AppException(
        identifier: error.requestOptions.path,
        statusCode: ResponseCode.DEFAULT,
        message: ResponseMessage.DEFAULT,
      );
    case DioExceptionType.unknown:
      return AppException(
        identifier: error.requestOptions.path,
        statusCode: ResponseCode.DEFAULT,
        message: ResponseMessage.DEFAULT,
      );
  }
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTORISED = 401; // failure, user is not authorised
  static const int FORBIDDEN = 403; //  failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  static const String SUCCESS = 'success'; // success with data
  static const String NO_CONTENT = 'success'; // success with no data (no content)
  static const String BAD_REQUEST = 'error.badRequest'; // failure, API rejected request
  static const String UNAUTORISED = 'error.unautorised'; // failure, user is not authorised
  static const String FORBIDDEN = 'error.forbidden'; //  failure, API rejected request
  static const String INTERNAL_SERVER_ERROR = 'error.internalServerError'; // failure, crash in server side
  static const String NOT_FOUND = 'error.notFound'; // failure, not found

  // local status code
  static const String CONNECT_TIMEOUT = 'error.connectTimeout';
  static const String CANCEL = 'error.cancel';
  static const String RECIEVE_TIMEOUT = 'error.recieveTimeout';
  static const String SEND_TIMEOUT = 'error.sendTimeout';
  static const String CACHE_ERROR = 'error.cacheError';
  static const String NO_INTERNET_CONNECTION = 'error.noInternetConnection';
  static const String DEFAULT = 'error.default';
}
