import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../BusinessLayer/helpers/image_helper.dart';
import '../../../Constants/api_links.dart';
import '../../../Constants/colors.dart';

import '../../../DataAccessLayer/Models/ads.dart';

import '../../../Constants/custom_styles.dart';
import '../../../Constants/font_styles.dart';
import '../../../Constants/routes.dart';

class AdvertisingRow extends StatelessWidget {
  const AdvertisingRow({Key? key, required this.advertising}) : super(key: key);
  final Advertising advertising;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.advertisingScreen, arguments: [advertising]);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: json.decode(advertising.images)[0],
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: AppColors.lightgrey,
                    borderRadius: CustomStyles.raduis10,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                            ImageHelper.buildImage(ApiLinks.storageUrl +
                                json.decode(advertising.images)[0]),
                            errorListener: () {}))),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  advertising.name,
                  style: ThirdStyle,
                ),
                Text(
                  advertising.description,
                  style: eight,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
