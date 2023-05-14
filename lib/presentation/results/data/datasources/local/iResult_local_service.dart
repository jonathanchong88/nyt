import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/data/data.dart';
import 'package:nyt/presentation/results/data/datasources/local/result_local_service.dart';

final resultLocalDataSourceProvider = Provider<IResultLocalDataSource>((ref) {
  final databaseService = ref.watch(databaseServiceProvider);
  return ResultLocalDataSource(databaseService.isar);
});

abstract class IResultLocalDataSource {
  Future<List<Doc>> getSearchResult();
  Future<void> setSearchResult(List<Doc> docs);
  Future<MostViewResultModel?> getMostViewResult();
  Future<void> setMostViewResult(MostViewResultModel mostViewResultModel);
}
