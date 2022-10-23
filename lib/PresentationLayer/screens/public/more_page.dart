import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MorePage extends StatelessWidget {
  const MorePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: const Center(child: Text("More")),
    );
  }
}
