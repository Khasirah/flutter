// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Home.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Home(),
      );
    },
    Dashboard.name: (routeData) {
      final args =
          routeData.argsAs<DashboardArgs>(orElse: () => const DashboardArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Dashboard(
          key: args.key,
          text: args.text,
        ),
      );
    },
  };
}

/// generated route for
/// [Home]
class Home extends PageRouteInfo<void> {
  const Home({List<PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Dashboard]
class Dashboard extends PageRouteInfo<DashboardArgs> {
  Dashboard({
    Key? key,
    String text = "Dashboard",
    List<PageRouteInfo>? children,
  }) : super(
          Dashboard.name,
          args: DashboardArgs(
            key: key,
            text: text,
          ),
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const PageInfo<DashboardArgs> page = PageInfo<DashboardArgs>(name);
}

class DashboardArgs {
  const DashboardArgs({
    this.key,
    this.text = "Dashboard",
  });

  final Key? key;

  final String text;

  @override
  String toString() {
    return 'DashboardArgs{key: $key, text: $text}';
  }
}
