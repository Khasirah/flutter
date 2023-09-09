import 'package:auto_route/auto_route.dart';
part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen, Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Home.page, initial: true),
        AutoRoute(page: Dashboard.page),
      ];
}
