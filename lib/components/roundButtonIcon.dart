import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback onPress;
  RoundIconButton({this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: const Color(0xFF4c4F5E),
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(icon),
    );
  }
}
