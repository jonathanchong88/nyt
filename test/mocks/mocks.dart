// Service
import 'package:mocktail/mocktail.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/data/data.dart';
import 'package:nyt/presentation/results/domain/domain.dart';

//services
class MockResultApiService extends Mock implements ResultApiService {}

//
class MockNetworkInfo extends Mock implements NetworkInfo {}

//
class MockResultLocalDataSource extends Mock implements ResultLocalDataSource {}

//repository
class MockIResultRepositoryRepository extends Mock
    implements IResultRepository {}
