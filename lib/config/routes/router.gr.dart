// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart' as _i3;

import '../../presentation/presentation.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    SearchRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SearchPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ResultRoute.name: (routeData) {
      final args = routeData.argsAs<ResultRouteArgs>(
          orElse: () => const ResultRouteArgs());
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.ResultPage(
          key: args.key,
          queryParam: args.queryParam,
        ),
      );
    },
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          SearchRoute.name,
          path: '/search-page',
        ),
        _i2.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i2.RouteConfig(
          ResultRoute.name,
          path: '/result-page',
        ),
      ];
}

/// generated route for
/// [_i1.SearchPage]
class SearchRoute extends _i2.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '/search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.ResultPage]
class ResultRoute extends _i2.PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    _i4.Key? key,
    String? queryParam,
  }) : super(
          ResultRoute.name,
          path: '/result-page',
          args: ResultRouteArgs(
            key: key,
            queryParam: queryParam,
          ),
        );

  static const String name = 'ResultRoute';
}

class ResultRouteArgs {
  const ResultRouteArgs({
    this.key,
    this.queryParam,
  });

  final _i4.Key? key;

  final String? queryParam;

  @override
  String toString() {
    return 'ResultRouteArgs{key: $key, queryParam: $queryParam}';
  }
}
