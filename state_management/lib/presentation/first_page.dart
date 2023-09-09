import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/appliacation/example_provider.dart';
import 'package:state_management/presentation/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("You Have pushed the button this many times:"),
            Text('${context.read<Counter>().getCount}'),
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SecondPage()))
              },
              child: const Text("Go to Second Page"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
