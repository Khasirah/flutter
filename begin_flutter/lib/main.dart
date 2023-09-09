import 'package:begin_flutter/router/router.dart';
import 'package:flutter/material.dart';
// import 'package:begin_flutter/presentation/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.green,
      // ),
      // home: const Home()
    );
  }
}
