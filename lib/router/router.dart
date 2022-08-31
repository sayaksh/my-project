import 'package:auto_route/annotations.dart';
import 'package:kanglei_tourist_home/authenticate/all_districts.dart';
import 'package:kanglei_tourist_home/authenticate/district.detailed.page.dart';
import 'package:kanglei_tourist_home/authenticate/home.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainPage, initial: true),
    AutoRoute(page: AllDistrictPage),
    AutoRoute(page: DistrictdetailPage),
  ],
)
class $AppRouter {}
