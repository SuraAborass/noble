import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/routes.dart';

import '../../Constants/font_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: TextFormField(
        onTap: () {
          Get.toNamed(AppRoutes.searchScreen);
        },
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: FirstStyle,
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            fillColor: const Color(0XFFF8F8F8),
            prefixIcon: const Icon(Icons.search, color: Color(0XFF0C3877)),
            hintText: "search_hint".tr,
            hintStyle: const TextStyle(
              fontSize: 15,
              color: Color(0XFFBEBEBE),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Color(0XFFD2D2D2))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Color(0XFFD2D2D2)))),
      ),
    );
  }
}
