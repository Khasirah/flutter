import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.textColor,
  });
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ],
    );
  }
}
