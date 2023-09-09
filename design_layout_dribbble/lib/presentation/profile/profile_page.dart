import 'package:flutter/material.dart';

import 'widgets/card_profile_information_widget.dart';
import 'widgets/featured_card_widget.dart';
import 'widgets/list_data_widget.dart';
import 'widgets/title_and_subtitle_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            const CardProfileInfoWidget(),
            const SizedBox(
              height: 25,
            ),
            notableDiscoveryData(),
            const SizedBox(
              height: 25,
            ),
            const FeaturedCardWidget(),
          ]),
        ),
      ),
    );
  }

  Widget notableDiscoveryData() {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAndSubtitle(),
          SizedBox(
            height: 25,
          ),
          ListDataWidget(),
        ],
      ),
    );
  }
}
