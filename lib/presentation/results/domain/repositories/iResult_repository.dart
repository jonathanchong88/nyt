import 'package:dartz/dartz.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/domain/domain.dart';

abstract class IResultRepository {
  Future<Either<Failure, List<ResultEntity>>> getSearchResults(
    String query,
    int page,
  );

  Future<Either<Failure, List<ResultEntity>>> getMostViewResults();
}
