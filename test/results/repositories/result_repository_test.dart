import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nyt/config/config.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/data/data.dart';
import 'package:nyt/presentation/results/domain/domain.dart';

import '../../mocks/mocks.dart';

void main() {
  //prepare
  late MockNetworkInfo networkInfo;
  late MockResultApiService resultApiService;
  late MockResultLocalDataSource resultLocalDataSource;
  late ResultRepository resultRepository;
  late MockDoc doc;

  MostViewResultModel mostViewResultModel =
      MostViewResultModel(status: '', copyright: '', numResults: 10, results: [
    Result(
      title: '',
      publishedDate: DateTime(2023),
    ),
  ]);

  SearchResultModel searchResultModel = SearchResultModel(
    status: '',
    copyright: '',
    response: Response(
      docs: [
        Doc(
          docAbstract: '',
          webUrl: '',
          snippet: '',
          sectionName: '',
          source: '',
          subsectionName: '',
          printPage: '',
          printSection: '',
          pubDate: '2023-01-01',
          docId: '',
          documentType: '',
          leadParagraph: '',
          newsDesk: '',
          typeOfMaterial: '',
          wordCount: 0,
          uri: '',
          byline: Byline(),
          keywords: [],
          multimedia: [],
          headline: const Headline(),
        ),
      ],
      meta: Meta(hits: 0, offset: 0, time: 0),
    ),
  );

  final resultEntity = ResultEntity(title: '', datePublished: DateTime(2023));
  final resultEntityList = [resultEntity];

  setUp(() {
    resultLocalDataSource = MockResultLocalDataSource();
    networkInfo = MockNetworkInfo();
    resultApiService = MockResultApiService();
    doc = MockDoc();
    resultRepository =
        ResultRepository(resultApiService, networkInfo, resultLocalDataSource);
  });

  tearDown(() {
    resetMocktailState();
  });

  // Group tests by methods from OrderRepository
  group('get search tests', () {
    test(
      'success, return list of result entity',
      () async {
        // Arrange
        when(() => networkInfo.isConnected).thenAnswer((_) async => true);
        when(() => resultApiService.getSearchResult(
                'election', '0', AppString.nytAPiKey))
            .thenAnswer((_) async => searchResultModel);
        when(() => resultLocalDataSource
                .setSearchResult(searchResultModel.response!.docs!))
            .thenAnswer((_) => Future<void>.value());
        when(() => doc.toEntity()).thenAnswer((_) => resultEntity);

        // Act
        final result = await resultRepository.getSearchResults('election', 0);
        // Assert
        if (result.isRight()) {
          final resultList = result.getOrElse(() => resultEntityList);
          expect(resultList, equals(resultEntityList));
        }
        expect(result.isRight(), true);
      },
    );

    test(
      'fail, return list of result entity',
      () async {
        // Arrange
        when(() => networkInfo.isConnected).thenAnswer((_) async => false);
        when(() => resultApiService.getSearchResult(
                'election', '0', AppString.nytAPiKey))
            .thenAnswer((_) async => searchResultModel);
        when(() => resultLocalDataSource.getSearchResult())
            .thenAnswer((_) => Future.value([]));

        // Act
        final result = await resultRepository.getSearchResults('election', 0);
        expect(result, const Left(Failure.offline()));
      },
    );
  });

  // Group tests by methods from OrderRepository
  group('most view tests', () {
    test(
      'success, return list of result entity',
      () async {
        // Arrange
        when(() => networkInfo.isConnected).thenAnswer((_) async => true);
        when(() => resultApiService.getMostViewsResult(AppString.nytAPiKey))
            .thenAnswer((_) async => mostViewResultModel);
        when(() => resultLocalDataSource.setMostViewResult(mostViewResultModel))
            .thenAnswer((_) => Future<void>.value());

        // Act
        final result = await resultRepository.getMostViewResults();

        // Assert
        if (result.isRight()) {
          final resultList = result.getOrElse(() => resultEntityList);
          expect(resultList, equals(resultEntityList));
        }
        expect(result.isRight(), true);
      },
    );

    test(
      'fail, return list of result entity',
      () async {
        // Arrange
        when(() => networkInfo.isConnected).thenAnswer((_) async => false);
        when(() => resultApiService.getMostViewsResult(AppString.nytAPiKey))
            .thenAnswer((_) async => mostViewResultModel);
        when(() => resultLocalDataSource.getMostViewResult())
            .thenAnswer((_) => Future.value(null));

        // Act
        final result = await resultRepository.getMostViewResults();
        expect(result, const Left(Failure.offline()));
      },
    );
  });
}
