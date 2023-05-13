import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/data/data.dart';
import 'package:nyt/presentation/results/domain/domain.dart';

final resultProvider = Provider.autoDispose<IResultRepository>((ref) {
  return ResultRepository(
    ref.watch(resultApiServiceProvider),
    ref.watch(networkInfoProvider),
  );
});
