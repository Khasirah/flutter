import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/appliacation/example_provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.read<Counter>().getCount}'),
          ],
        ),
      ),
    );
  }
}
