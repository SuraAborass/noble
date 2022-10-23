import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/api_links.dart';
import '../../../DataAccessLayer/Models/property.dart';

import '../../../BusinessLayer/helpers/image_helper.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';

class HomeProperty extends StatelessWidget {
  const HomeProperty({Key? key, required this.property}) : super(key: key);
  final Property property;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 2,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: CachedNetworkImageProvider(ApiLinks.storageUrl +
                  ImageHelper.buildImage(json.decode(property.image)[0])),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    AppColors.blue,
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.circular(20)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 30,
                  child: Center(
                      child: Text(
                    "sell".tr,
                    style: seventh,
                  )),
                  decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      property.title,
                      style: FourthSyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.bathtub_sharp,
                            size: 8, color: Colors.white),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(property.baths.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontFamily: "Cairo")),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.single_bed,
                            size: 8, color: Colors.white),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(property.rooms.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontFamily: "Cairo")),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.open_with,
                            size: 8, color: Colors.white),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text("شرقي",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontFamily: "Cairo")),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.home, size: 8, color: Colors.white),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(property.space,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontFamily: "Cairo")),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
