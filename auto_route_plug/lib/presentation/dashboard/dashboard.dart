import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// class Dashboard extends StatelessWidget {
//   const Dashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Dashboard"),
//       ),
//       body: ElevatedButton(
//         onPressed: () => {
//           Navigator.of(context).pop(),
//         },
//         child: const Text("Go Back !"),
//       ),
//     );
//   }
// }

@RoutePage()
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: ElevatedButton(
        onPressed: () => {context.router.pop()},
        child: const Text("Go Back!"),
      ),
    );
  }
}
