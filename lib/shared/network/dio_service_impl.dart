// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_my_anime_list/shared/network/dio_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioServiceImpl implements DioService {
  late Dio dio;

  @override
  Future<void> initDio() async {
    dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env[NetworkEnv.MY_ANIME_LIST_BASE_URL.name] ?? '',
      ),
    )..interceptors.add(PrettyDioLogger());
  }

  @override
  Dio getDio() {
    return dio;
  }
}

enum NetworkEnv {
  MY_ANIME_LIST_BASE_URL,
}
