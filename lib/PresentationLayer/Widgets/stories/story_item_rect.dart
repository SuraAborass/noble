import 'package:flutter/cupertino.dart';

class StoryItemRect extends StatelessWidget {
  const StoryItemRect({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)));
  }
}
