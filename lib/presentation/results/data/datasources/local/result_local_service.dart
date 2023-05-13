import 'package:isar/isar.dart';
import 'package:nyt/presentation/results/data/data.dart';

class ResultLocalDataSource implements IResultLocalDataSource {
  const ResultLocalDataSource(this.isar);
  final Isar isar;

  @override
  Future<SearchResultModel?> getSearchResult() async {
    return await isar.searchResultModels.where().findFirst();
  }

  @override
  Future<void> setSearchResult(SearchResultModel searchResultModel) async {
    await isar.writeTxn(() async {
      await isar.searchResultModels.clear();
      await isar.searchResultModels.put(searchResultModel);
    });
  }

  @override
  Future<MostViewResultModel?> getMostViewResult() async {
    return await isar.mostViewResultModels.where().findFirst();
  }

  @override
  Future<void> setMostViewResult(
      MostViewResultModel mostViewResultModel) async {
    await isar.writeTxn(() async {
      await isar.mostViewResultModels.clear();
      await isar.mostViewResultModels.put(mostViewResultModel);
    });
  }
}
