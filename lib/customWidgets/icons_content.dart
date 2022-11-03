import 'package:flutter/material.dart';
import '../utils/constants.dart';

class IconBar extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconBar({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelStyle,
        )
      ],
    );
  }
}
