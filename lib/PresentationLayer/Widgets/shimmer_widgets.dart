import 'package:flutter/material.dart';
/* import 'package:realestateapp/constants/CustomStyles.dart'; */
import 'package:shimmer/shimmer.dart';

import '../../Constants/custom_styles.dart';

class Shimmerwidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  const Shimmerwidget.circular(
      {Key? key,
      required this.width,
      required this.height,
      this.shapeBorder = const CircleBorder()})
      : super(key: key);
  const Shimmerwidget.rectangler(
      {Key? key,
      this.width = double.infinity,
      required this.height,
      this.shapeBorder = const RoundedRectangleBorder()})
      : super(key: key);
  const Shimmerwidget.roundedrectangler(
      {Key? key,
      required this.width,
      required this.height,
      this.shapeBorder =
          const RoundedRectangleBorder(borderRadius: CustomStyles.raduis10)})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            shape: shapeBorder,
            color: Colors.grey[300],
          ),
        ),
        baseColor: Colors.grey[200]!,
        highlightColor: Colors.grey[100]!);
  }
}
