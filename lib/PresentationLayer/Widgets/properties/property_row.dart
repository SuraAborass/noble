import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/helpers/image_helper.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/routes.dart';

import '../../../DataAccessLayer/Models/property.dart';

import '../../../Constants/api_links.dart';
import '../../../Constants/custom_styles.dart';
import '../../../Constants/font_styles.dart';

class PropertyRow extends StatelessWidget {
  const PropertyRow({Key? key, required this.property}) : super(key: key);
  final Property property;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.propertyScreen, arguments: [property, null]);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: AppColors.lightgrey,
                  borderRadius: CustomStyles.raduis10,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          ApiLinks.storageUrl +
                              ImageHelper.buildImage(
                                  json.decode(property.image)[0]),
                          errorListener: () {}))),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  property.title,
                  style:  Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  property.city,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
