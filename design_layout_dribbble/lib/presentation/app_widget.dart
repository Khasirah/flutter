import 'package:design_layout_dribbble/presentation/profile/profile_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Profile and Settings',
      home: ProfilePage(),
    );
  }
}
