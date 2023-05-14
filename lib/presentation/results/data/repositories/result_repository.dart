import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nyt/config/config.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/data/data.dart';
import 'package:nyt/presentation/results/domain/domain.dart';

class ResultRepository implements IResultRepository {
  final ResultApiService _api;
  final NetworkInfo networkInfo;
  final IResultLocalDataSource _localDataSource;

  ResultRepository(
    this._api,
    this.networkInfo,
    this._localDataSource,
  );

  @override
  Future<Either<Failure, List<ResultEntity>>> getMostViewResults() async {
    var response = <ResultEntity>[];
    var mostViewResponse = MostViewResultModel();
    try {
      if ((await networkInfo.isConnected)) {
        mostViewResponse = await _api.getMostViewsResult(AppString.nytAPiKey);
        await _localDataSource.setMostViewResult(mostViewResponse);
        response = mostViewResponse.toEntity();
      } else {
        final mostViewResponse = await _localDataSource.getMostViewResult();
        if (mostViewResponse == null) {
          return left(const Failure.offline());
        }
        response = mostViewResponse.toEntity();
      }
      return right(response);
    } on DioError catch (e) {
      return left(e.handleFailure());
    }
  }

  @override
  Future<Either<Failure, List<ResultEntity>>> getSearchResults(
      String query, int page) async {
    var response = <ResultEntity>[];
    try {
      if ((await networkInfo.isConnected)) {
        final searchResponse = await _api.getSearchResult(
            query, page.toString(), AppString.nytAPiKey);
        await _localDataSource.setSearchResult(searchResponse.response!.docs!);
        response = searchResponse.response!.docs!
            .map(
              (e) => e.toEntity(),
            )
            .toList();
      } else {
        final docs = await _localDataSource.getSearchResult();
        if (docs.isEmpty) {
          return left(const Failure.offline());
        }
        response = docs
            .map(
              (e) => e.toEntity(),
            )
            .toList();
      }
      return right(response);
    } on DioError catch (e) {
      return left(e.handleFailure());
    }
  }
}
