import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../BusinessLayer/Controllers/property_controller.dart';

import '../../Constants/font_styles.dart';

class HighLightsTextfield extends StatelessWidget {
  const HighLightsTextfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        style: Theme.of(context).textTheme.bodySmall,
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            fillColor: const Color(0XFFF8F8F8),
            prefixIcon: const Icon(Icons.search, color: Color(0XFF0C3877)),
            hintText: "search_in_highlights".tr,
            hintStyle: Theme.of(context).textTheme.bodyText1,
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

class HighLightsBody extends StatelessWidget {
  final PropertyController propertyController = Get.find();

  HighLightsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertyController>(
        init: propertyController,
        builder: (_) {
          return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, i) {
                return ListTile(
                    onTap: () {},
                    title: Text(
                      propertyController.properties[i].title,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    subtitle: Text(
                      propertyController.properties[i].price,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(json
                          .decode(propertyController.properties[i].image)[0]),
                    ));
              },
              itemCount: propertyController.properties.length,
            ),
          );
        });
  }
}
