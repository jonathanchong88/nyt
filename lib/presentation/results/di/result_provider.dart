import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/data/data.dart';
import 'package:nyt/presentation/results/domain/domain.dart';
import 'package:nyt/presentation/results/ui/controller/result_controller.dart';

final resultProvider = Provider.autoDispose<IResultRepository>((ref) {
  return ResultRepository(
    ref.watch(resultApiServiceProvider),
    ref.watch(networkInfoProvider),
    ref.watch(resultLocalDataSourceProvider),
  );
});

final resultControllerProvider = StateNotifierProvider.autoDispose<
    ResultController, AsyncValue<List<ResultEntity>>>(
  (ref) {
    final resultRepo = ref.watch(resultProvider);
    return ResultController(resultRepo);
  },
);
