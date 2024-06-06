import 'package:auto_route/auto_route.dart';
import 'package:psycho_test_app/src/features/app/pages/DiaryPage.dart';
import 'package:psycho_test_app/src/features/app/pages/StatisticsPage.dart';
import 'package:psycho_test_app/src/features/screens/home/CalendarPage.dart';
import 'package:psycho_test_app/src/features/screens/home/NavMainPage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[

    AutoRoute(
      page: NavMainPage,
      path: '/',
      deferredLoading: true,
    ),
    AutoRoute(
      page: CalendarPage,
      path: '/calendar',
      deferredLoading: true,
    ),
   
    // AutoRoute(
    //   page: NavMainPage,
    //   path: '/',
    //   deferredLoading: true,
    //   children: [
    //     AutoRoute(path: 'diary', page: DiaryPage),
    //     AutoRoute(path: 'statistics', page: StatisticsPage),
    //   ],
    // ),
   
  ],
)
class $AppRouter {}