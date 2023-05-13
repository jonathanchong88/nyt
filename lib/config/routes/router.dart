import 'package:auto_route/auto_route.dart';
import 'package:nyt/presentation/presentation.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SearchPage),
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: ResultPage),
  ],
)
class $AppRouter {}
