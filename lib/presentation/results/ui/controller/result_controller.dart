import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nyt/presentation/results/domain/domain.dart';

class ResultController extends StateNotifier<AsyncValue<List<ResultEntity>>> {
  ResultController(
    IResultRepository resultRepository,
  )   : _resultRepository = resultRepository,
        super(const AsyncValue.loading());

  final IResultRepository _resultRepository;
  List<ResultEntity>? resultEntitys = [];

  Future<void> getSearchResults(String query, int page) async {
    if (page == 0) {
      state = const AsyncValue.loading();
    }
    final failureOrData = await _resultRepository.getSearchResults(query, page);

    state = failureOrData.fold(
      (failure) => AsyncError(failure, StackTrace.empty),
      (results) {
        if (state.value == null) {
          resultEntitys = results;
          return AsyncValue.data(resultEntitys!);
        } else {
          resultEntitys!.addAll(results);
          return AsyncValue.data(resultEntitys!);
        }
      },
    );
  }

  Future<void> getMostViewResults() async {
    state = const AsyncValue.loading();
    final failureOrData = await _resultRepository.getMostViewResults();

    state = failureOrData.fold(
      (failure) => AsyncError(failure, StackTrace.empty),
      (results) {
        return AsyncValue.data(results);
      },
    );
  }
}
