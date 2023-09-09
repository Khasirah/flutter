import 'package:auto_route/auto_route.dart';
import 'package:auto_route_plug/router/router.dart';
import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home"),
//       ),
//       body: ElevatedButton(
//         onPressed: () => {
//           Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => const Dashboard(),
//           ))
//         },
//         child: const Text("Go To Dashboard"),
//       ),
//     );
//   }
// }

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ElevatedButton(
        onPressed: () => {context.router.push(const Dashboard())},
        child: const Text("Go To Dashboard"),
      ),
    );
  }
}
