import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/appliacation/example_provider.dart';
import 'package:state_management/presentation/first_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Provider',
      home: FirstPage(),
    );
  }
}
