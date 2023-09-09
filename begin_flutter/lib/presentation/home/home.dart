import 'package:auto_route/auto_route.dart';
// import 'package:begin_flutter/presentation/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:begin_flutter/widgets/icon_with_label.dart';

import '../../router/router.dart';

@RoutePage()
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.account_circle), Icon(Icons.volume_down)],
        title: const Text(
          "BacktoBasic",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () => {
                context.router.push(Dashboard())
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const Dashboard(
                //           text: "From Home",
                //         )))
              },
              child: const Text("Go To Dashboard"),
            ),
          ),
          Container(
            color: const Color.fromRGBO(216, 217, 218, 1),
            height: 60,
            width: double.infinity,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconWithLabel(
                  icon: Icons.call,
                  text: "CALL",
                  iconColor: Colors.blueAccent,
                  textColor: Colors.blueAccent,
                ),
                IconWithLabel(
                  icon: Icons.navigation,
                  text: "ROUTE",
                  iconColor: Colors.blueAccent,
                  textColor: Colors.blueAccent,
                ),
                IconWithLabel(
                  icon: Icons.share,
                  text: "SHARE",
                  iconColor: Colors.blueAccent,
                  textColor: Colors.blueAccent,
                ),
              ],
            ),
          ),
        ],
      ),

      // body: Container(
      //   color: Colors.green,
      //   child: const Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [Icon(Icons.headphones), Icon(Icons.e_mobiledata)],
      //   ),
      // ),

      // body: Container(
      //   margin: EdgeInsets.,
      //   padding: ,
      //   color: Colors.amber,
      //   child: const Icon(
      //     Icons.alarm,
      //     size: 40,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}
