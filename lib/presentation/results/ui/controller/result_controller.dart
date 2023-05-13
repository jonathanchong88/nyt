import 'package:nyt/presentation/results/di/di.dart';
import 'package:nyt/presentation/results/domain/entity/result_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'result_controller.g.dart';

@riverpod
class ResultController extends _$ResultController {
  late List<ResultEntity>? resultEntitys = [];
  @override
  FutureOr<List<ResultEntity>> build() {
    // nothing to do
    return [];
  }

  Future<void> getSearchResults(String query, int page) async {
    if (page == 0) {
      state = const AsyncValue.loading();
    }
    final failureOrData =
        await ref.read(resultProvider).getSearchResults(query, page);

    state = failureOrData.fold(
      (failure) => AsyncError(failure, StackTrace.empty),
      (results) {
        if (state.value!.length > 1) {
          resultEntitys!.addAll(results);
          return AsyncValue.data(resultEntitys!);
        } else {
          resultEntitys = results;
          return AsyncValue.data(resultEntitys!);
        }
      },
    );
  }

  Future<void> getMostViewResults() async {
    state = const AsyncValue.loading();
    final failureOrData = await ref.read(resultProvider).getMostViewResults();

    state = failureOrData.fold(
      (failure) => AsyncError(failure, StackTrace.empty),
      (results) {
        return AsyncValue.data(results);
      },
    );
  }
}
