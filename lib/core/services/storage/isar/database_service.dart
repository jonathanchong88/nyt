part of database_service;

abstract class DatabaseService {
  Future<void> init();

  void close();

  Future<void> clear();

  Future<Isar> getIsar();

  Isar get isar;
}
