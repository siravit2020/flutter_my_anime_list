import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_my_anime_list/features/home/data/data_sources/remote/home_api_service.dart';
import 'package:flutter_my_anime_list/features/home/data/models/season_now_model.dart';
import 'package:flutter_my_anime_list/shared/network/dio_service_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import '../../helpers/json_reader.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late HomeApiService homeApiService;

  setUp(() async {
    await dotenv.load();
    final dioService = DioServiceImpl();
    await dioService.initDio();
    dio = dioService.getDio();
    dioAdapter = DioAdapter(dio: dio);
    dio.httpClientAdapter = dioAdapter;
    homeApiService = HomeApiService(dio);
  });

  group('HomeApiService', () {
    test('should return SeasonNowModel when getSeasonNow is called', () async {
      // arrange
      dioAdapter.onGet(
        '/seasons/now',
        queryParameters: {
          'page': 1,
          'limit': 10,
        },
        (server) => server.reply(
          200,
          jsonDecode(
            readJson(
              'unit_test/home/helpers/dummy_data/season_now_model_dummy.json',
            ),
          ),
        ),
      );
      // act
      final result = await homeApiService.getSeasonNow(page: 1, limit: 10);
      // assert
      expect(result, isA<SeasonNowModel>());
    });
  });
}
