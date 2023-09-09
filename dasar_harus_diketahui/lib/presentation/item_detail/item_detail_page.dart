import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({
    super.key,
    required this.textTitle,
  });
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 200,
          width: double.infinity, // untuk lebar full layar
          child: Image.asset(
            textTitle,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
