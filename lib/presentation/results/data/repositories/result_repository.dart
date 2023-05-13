import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nyt/config/config.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/data/datasources/datasources.dart';
import 'package:nyt/presentation/results/domain/domain.dart';

class ResultRepository implements IResultRepository {
  final ResultApiService _api;
  final NetworkInfo networkInfo;
  // final IHomeLocalDataSource _localDataSource;

  ResultRepository(
    this._api,
    this.networkInfo,
    // this._localDataSource,
  );

  @override
  Future<Either<Failure, List<ResultEntity>>> getMostViewResults() async {
    var response = <ResultEntity>[];
    try {
      if ((await networkInfo.isConnected)) {
        final mostViewResponse =
            await _api.getMostViewsResult(AppString.nytAPiKey);
        response = mostViewResponse.toEntity();
        // await _localDataSource.setCourierCountModel(response);
      } else {
        // final courierCountModel = await _localDataSource.getCourierCountModel();
        // if (courierCountModel == null) {
        //   return left(const Failure.offline());
        // }
        // response = courierCountModel;
      }
      return right(response);
    } on DioError catch (e) {
      return left(e.handleFailure());
    }
  }

  @override
  Future<Either<Failure, List<ResultEntity>>> getSearchResults(
      String query) async {
    var response = <ResultEntity>[];
    try {
      if ((await networkInfo.isConnected)) {
        final searchResponse =
            await _api.getSearchResult(query, AppString.nytAPiKey);
        response = searchResponse.toEntity();
        // await _localDataSource.setCourierCountModel(response);
      } else {
        // final courierCountModel = await _localDataSource.getCourierCountModel();
        // if (courierCountModel == null) {
        //   return left(const Failure.offline());
        // }
        // response = courierCountModel;
      }
      return right(response);
    } on DioError catch (e) {
      return left(e.handleFailure());
    }
  }
}
