import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Dashboard extends StatelessWidget {
  const Dashboard({super.key, this.text = "Dashboard"});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: ElevatedButton(
        onPressed: () => {context.router.pop()},
        child: const Text("Back To Home"),
      ),
    );
  }
}
