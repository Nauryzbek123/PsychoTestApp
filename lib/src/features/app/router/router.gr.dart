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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../screens/home/CalendarPage.dart' deferred as _i2;
import '../../screens/home/NavMainPage.dart' deferred as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NavMainRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.NavMainPage(),
        ),
      );
    },
    CalendarRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.CalendarPage(),
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          NavMainRoute.name,
          path: '/',
          deferredLoading: true,
        ),
        _i3.RouteConfig(
          CalendarRoute.name,
          path: '/calendar',
          deferredLoading: true,
        ),
      ];
}

/// generated route for
/// [_i1.NavMainPage]
class NavMainRoute extends _i3.PageRouteInfo<void> {
  const NavMainRoute()
      : super(
          NavMainRoute.name,
          path: '/',
        );

  static const String name = 'NavMainRoute';
}

/// generated route for
/// [_i2.CalendarPage]
class CalendarRoute extends _i3.PageRouteInfo<void> {
  const CalendarRoute()
      : super(
          CalendarRoute.name,
          path: '/calendar',
        );

  static const String name = 'CalendarRoute';
}
