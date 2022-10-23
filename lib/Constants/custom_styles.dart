import 'package:flutter/material.dart';

class CustomStyles {
  static const raduis10 = BorderRadius.all(Radius.circular(10));
  static const raduis20 = BorderRadius.all(Radius.circular(20));

  static InputDecoration dropdownWhite = InputDecoration(
      contentPadding: const EdgeInsets.all(5),
      fillColor: const Color(0XFFF8F8F8),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0XFFD2D2D2))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0XFFD2D2D2))));
}
