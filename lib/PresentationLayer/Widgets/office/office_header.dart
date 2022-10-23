import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:noble/PresentationLayer/Widgets/snackbars.dart';
import '../../../Constants/font_styles.dart';
import '../../../DataAccessLayer/Models/office.dart';

import '../../../Constants/colors.dart';

Widget officeHeader(Office office, int propertiesCount) {
  return Container(
    padding: const EdgeInsets.only(bottom: 20),
    width: double.infinity,
    height: 400,
    decoration: const BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))),
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                  onPressed: () {
                    SnackBars.successSnackbar("تمت الإضافة بنجاح");
                  },
                  icon: const Icon(
                    Icons.favorite_border,
                    color: AppColors.lightwhite,
                    size: 30,
                  )),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.chevron_right,
                color: AppColors.lightwhite,
                size: 40,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
      Center(
          child: Column(children: [
        CircleAvatar(
          backgroundImage: NetworkImage(office.logo),
          radius: 50,
          backgroundColor: Colors.transparent,
        ),
        const SizedBox(height: 5),
        Text(
          office.name,
          style: FifthStyle,
        ),
        const SizedBox(height: 5),
        Text(
          office.city,
          style: FourthSyle,
        ),
        RatingBar(
            itemSize: 30,
            allowHalfRating: true,
            initialRating: 3.5,
            ratingWidget: RatingWidget(
                full: const Icon(
                  Icons.star,
                  color: AppColors.orange,
                ),
                half: const Icon(
                  Icons.star_half,
                  color: AppColors.orange,
                ),
                empty: const Icon(
                  Icons.star,
                  color: AppColors.lightgrey,
                )),
            onRatingUpdate: (rating) {})
      ])),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Text("1K", style: firstly),
              Text("followers".tr, style: FourthSyle),
            ],
          ),
          Column(
            children: [
              Text(propertiesCount.toString(), style: firstly),
              Text("real_state".tr, style: FourthSyle),
            ],
          ),
        ],
      )
    ]),
  );
}
