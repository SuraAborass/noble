import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/PresentationLayer/Widgets/snackbars.dart';
import '../../Constants/api_links.dart';
import '../../Constants/routes.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../../DataAccessLayer/Models/property.dart';

class SliverAppBarProperty extends StatelessWidget {
  final Property propety;

  const SliverAppBarProperty({Key? key, required this.propety})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                propety.title,
                style: heading2Title,
              ),
            ),
            centerTitle: true,
            background: Stack(fit: StackFit.expand, children: [
              Image.network(
                ApiLinks.storageUrl + json.decode(propety.image)[0],
                fit: BoxFit.cover,
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.blue,
                      Colors.transparent,
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              )
            ]),
          ),
          backgroundColor: AppColors.blue2,
          expandedHeight: 320,
          toolbarHeight: 100,
          actions: [
            IconButton(
              icon: const Icon(Icons.chevron_right,
                  size: 30, color: AppColors.lightwhite),
              onPressed: () {
                Get.back();
              },
            ),
          ],
          //
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: IconButton(
                onPressed: () {
                  SnackBars.successSnackbar("تمت الإضافة بنجاح");
                },
                icon: const Icon(Icons.favorite_border,
                    size: 30, color: AppColors.lightwhite)),
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 25),
            Row(
              children: [
                Text("realstate_specifications".tr, style: Theme.of(context).textTheme.bodyMedium),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      Icons.remove_red_eye,
                      size: 12,
                      color: Color(0XFFBEBEBE),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      propety.views.toString(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Icon(
                  Icons.sell,
                  color: Color(0XFFBEBEBE),
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  propety.price,
                  style: Theme.of(context).textTheme.displayLarge,
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.home,
                      color: AppColors.orange,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(propety.space, style: Theme.of(context).textTheme.titleSmall)
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.open_with,
                      color: AppColors.orange,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(propety.city, style: Theme.of(context).textTheme.titleSmall)
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.single_bed,
                      color: AppColors.orange,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(propety.rooms.toString(), style: Theme.of(context).textTheme.titleSmall)
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.bathtub_sharp,
                      color: AppColors.orange,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(propety.baths.toString(), style: Theme.of(context).textTheme.titleSmall)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: Get.height - 400,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.grey)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(children: [
                  if (propety.office != null)
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.office,
                                arguments: [propety.office]);
                          },
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: CachedNetworkImageProvider(
                              propety.office!.logo,
                            ),
                          ),
                        )),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(propety.office!.name, style: Theme.of(context).textTheme.bodyMedium),
                      Text(propety.office!.city, style: Theme.of(context).textTheme.bodyLarge)
                    ],
                  ),
                  const Spacer(),
                  if (propety.office != null &&
                      propety.office!.mobileNumber != "")
                    IconButton(
                        onPressed: () {
                          final Uri launchUri = Uri(
                            scheme: 'tel',
                            path: propety.office!.mobileNumber,
                          );
                          launchUrl(launchUri);
                        },
                        icon: const Icon(
                          Icons.phone,
                          color: AppColors.blue,
                          size: 25,
                        ))
                ]),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "about_realstate".tr,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 15),
            TextFormField(
              minLines: 1,
              maxLines: 10,
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                  border:
                      const UnderlineInputBorder(borderSide: BorderSide.none),
                  hintText: "hint_realstate".tr,
                  hintStyle: Theme.of(context).textTheme.bodyLarge),
            ),
            const SizedBox(height: 200)
          ]),
        ))
      ],
    );
  }
}
