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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../authenticate/all_districts.dart' as _i2;
import '../authenticate/district.detailed.page.dart' as _i3;
import '../authenticate/home.page.dart' as _i1;
import '../model/districts.model.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    AllDistrictRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AllDistrictPage());
    },
    DistrictdetailRoute.name: (routeData) {
      final args = routeData.argsAs<DistrictdetailRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.DistrictdetailPage(key: args.key, allData: args.allData));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MainRoute.name, path: '/'),
        _i4.RouteConfig(AllDistrictRoute.name, path: '/all-district-page'),
        _i4.RouteConfig(DistrictdetailRoute.name, path: '/districtdetail-page')
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '/');

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.AllDistrictPage]
class AllDistrictRoute extends _i4.PageRouteInfo<void> {
  const AllDistrictRoute()
      : super(AllDistrictRoute.name, path: '/all-district-page');

  static const String name = 'AllDistrictRoute';
}

/// generated route for
/// [_i3.DistrictdetailPage]
class DistrictdetailRoute extends _i4.PageRouteInfo<DistrictdetailRouteArgs> {
  DistrictdetailRoute({_i5.Key? key, required _i6.DistrictModel2 allData})
      : super(DistrictdetailRoute.name,
            path: '/districtdetail-page',
            args: DistrictdetailRouteArgs(key: key, allData: allData));

  static const String name = 'DistrictdetailRoute';
}

class DistrictdetailRouteArgs {
  const DistrictdetailRouteArgs({this.key, required this.allData});

  final _i5.Key? key;

  final _i6.DistrictModel2 allData;

  @override
  String toString() {
    return 'DistrictdetailRouteArgs{key: $key, allData: $allData}';
  }
}
