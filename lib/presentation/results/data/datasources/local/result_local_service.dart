import 'package:isar/isar.dart';
import 'package:nyt/presentation/results/data/data.dart';

class ResultLocalDataSource implements IResultLocalDataSource {
  const ResultLocalDataSource(this.isar);
  final Isar isar;

  @override
  Future<List<Doc>> getSearchResult() async {
    return await isar.docs.where().findAll();
  }

  @override
  Future<void> setSearchResult(List<Doc> docs) async {
    await isar.writeTxn(() async {
      await isar.docs.putAll(docs);
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
