import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../DataAccessLayer/Models/ads.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../BusinessLayer/helpers/image_helper.dart';
import '../../../Constants/api_links.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../Widgets/login_widgets.dart';
import '../../Widgets/title.dart';
import 'custom_botton_nav.dart';

class AdvertiingScreen extends StatelessWidget {
  AdvertiingScreen({Key? key}) : super(key: key);
  final Advertising advertising = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        bottomNavigationBar: const CustomBottonNav(),
        backgroundColor: context.theme.backgroundColor,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              centerTitle: true,
              expandedHeight: 300,
              elevation: 2.0,
              titleSpacing: 20,
              backgroundColor: Colors.white,
              stretch: true,
              /* floating: true, */
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const [StretchMode.zoomBackground],
                background: Hero(
                  tag: json.decode(advertising.images)[0],
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(25)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                                ApiLinks.storageUrl +
                                    ImageHelper.buildImage(
                                        json.decode(advertising.images)[0])))),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: Get.height - 0400,
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              pageTitle(advertising.name, null),
                              Text(
                                "price".tr,
                                style: ThirdStyle,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                advertising.price.toStringAsFixed(0),
                                style: fourthly,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "spec".tr,
                                style: ThirdStyle,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                advertising.description,
                                style: fourthly,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  final Uri launchUri = Uri(
                                    scheme: 'tel',
                                    path: advertising.mobileNumber,
                                  );
                                  launchUrl(launchUri);
                                },
                                child: Button(
                                    text1: "contactwith".tr,
                                    buttonColor: AppColors.orange,
                                    textColor: Colors.white,
                                    loading: false,
                                    loadingText: ""),
                              ),
                            ))
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
