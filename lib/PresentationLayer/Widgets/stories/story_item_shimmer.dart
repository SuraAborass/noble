import 'package:flutter/cupertino.dart';

import '../shimmer_widgets.dart';

class StoryItemShimmer extends StatelessWidget {
  const StoryItemShimmer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(5.0),
        child: Shimmerwidget.roundedrectangler(
          width: 100,
          height: 120,
        ));
  }
}
