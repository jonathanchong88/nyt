import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nyt/config/config.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/data/models/models.dart';
import 'package:retrofit/retrofit.dart';

part 'result_api_service.g.dart';

final resultApiServiceProvider = Provider<ResultApiService>(
    (ref) => ResultApiService(ref.watch(dioBuilderProvider)));

@RestApi()
abstract class ResultApiService {
  factory ResultApiService(Dio dioBuilder) = _ResultApiService;

  @GET(AppString.nytSearchUrl)
  Future<SearchResultModel> getSearchResult(
    @Query('q') String queryParam,
    @Query('api-key') String apiKey,
  );

  @GET(AppString.nytMostPopularUrl)
  Future<MostViewResultModel> getMostViewsResult(
    @Query('api-key') String apiKey,
  );
}
