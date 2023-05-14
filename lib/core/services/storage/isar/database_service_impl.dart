part of database_service;

final databaseServiceProvider = Provider<DatabaseService>((ref) {
  return DatabaseServiceImpl();
});

class DatabaseServiceImpl implements DatabaseService {
  @protected
  late Directory direc;
  @protected
  late Isar _isar;

  @override
  Isar get isar => _isar;

  @protected
  @override
  Future<void> init() async {
    direc = await getApplicationSupportDirectory();
    _isar = await Isar.open(
      [
        MostViewResultModelSchema,
        DocSchema,
      ],
      directory: direc.path,
    );
  }

  @protected
  @override
  Future<void> clear() async {
    await isar.clear();
  }

  @override
  void close() async {
    await _isar.close();
  }

  @override
  Future<Isar> getIsar() async {
    return _isar;
  }
}
