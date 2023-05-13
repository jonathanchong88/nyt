import 'package:dartz/dartz.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/domain/entity/result_entity.dart';

abstract class IResultRepository {
  Future<Either<Failure, List<ResultEntity>>> getSearchResults(
    String query,
  );

  Future<Either<Failure, List<ResultEntity>>> getMostViewResults();
}
