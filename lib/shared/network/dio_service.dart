import 'package:dio/dio.dart';

abstract class DioService {
  Future<void> initDio();
  Dio getDio();
}
