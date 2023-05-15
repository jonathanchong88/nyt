import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/domain/domain.dart';
import 'package:nyt/presentation/results/ui/controller/result_controller.dart';

import '../../mocks/mocks.dart';

void main() {
  //prepare
  late MockIResultRepositoryRepository repositoryRepository;
  late ResultController resultController;

  final resultEntityList = [
    ResultEntity(title: '', datePublished: DateTime.now())
  ];

  setUp(() {
    repositoryRepository = MockIResultRepositoryRepository();
    resultController = ResultController(
      repositoryRepository,
    );
  });

  tearDown(() {
    resetMocktailState();
  });

  // Group tests by methods from get most view results
  group('get most view result controller tests', () {
    test(
      'success',
      () async {
        when(() => repositoryRepository.getMostViewResults()).thenAnswer(
          (_) async => Right(resultEntityList),
        );

        // verify
        // Assert
        expectLater(
          resultController.stream,
          emitsInOrder([AsyncValue.data(resultEntityList)]),
        );
        //
        // run
        await resultController.getMostViewResults();
      },
    );

    test(
      'fail',
      () async {
        when(() => repositoryRepository.getMostViewResults()).thenAnswer(
          (_) async => const Left(Failure.offline()),
        );

        // verify
        // Assert
        expectLater(
          resultController.stream,
          emitsInOrder([
            const AsyncError<List<ResultEntity>>(
                Failure.offline(), StackTrace.empty),
          ]),
        );
        //
        // run
        await resultController.getMostViewResults();
      },
    );
  });

  // Group tests by methods from search results
  group('get search result controller tests', () {
    test(
      'success',
      () async {
        when(() => repositoryRepository.getSearchResults('', 0)).thenAnswer(
          (_) async => Right(resultEntityList),
        );

        // verify
        // Assert
        expectLater(
          resultController.stream,
          emitsInOrder([AsyncValue.data(resultEntityList)]),
        );
        //
        // run
        await resultController.getSearchResults('', 0);
      },
    );

    test(
      'fail',
      () async {
        when(() => repositoryRepository.getSearchResults('', 0)).thenAnswer(
          (_) async => const Left(Failure.offline()),
        );

        // verify
        // Assert
        expectLater(
          resultController.stream,
          emitsInOrder([
            const AsyncError<List<ResultEntity>>(
                Failure.offline(), StackTrace.empty),
          ]),
        );
        //
        // run
        await resultController.getSearchResults('', 0);
      },
    );
  });
}
