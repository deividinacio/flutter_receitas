import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle bigTitle = const TextStyle(
    fontSize: 32,
    color: Color.fromARGB(255, 119, 11, 4),
    fontWeight: FontWeight.w700,
    
  );

  static BoxDecoration boxDecorationFlexible(double pRadius, Color pColor)
  {
    return BoxDecoration(
      color: pColor,
      borderRadius: BorderRadius.circular(pRadius),
      border: Border.all(
        width: 2,
        color: const Color.fromARGB(255, 112, 112, 114),
      )
    );
  }
}