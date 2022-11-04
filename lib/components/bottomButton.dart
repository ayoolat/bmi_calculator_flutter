import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Renders/resultsPage.dart';
import '../utils/constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  BottomButton({required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: const Color(0xFFEB1555),
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
