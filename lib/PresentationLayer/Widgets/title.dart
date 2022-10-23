import 'package:flutter/material.dart';
import '../../Constants/font_styles.dart';

Widget pageTitle(title, other) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: headingTitle,
        ),
        if (other == true)
          Text(
            other,
            style: headingTitleMore,
          ),
      ],
    ),
  );
}

Widget secondryTitle(title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: headingTitle,
        ),
      ],
    ),
  );
}
