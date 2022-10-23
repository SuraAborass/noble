import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/custom_styles.dart';
import '../../../Constants/font_styles.dart';
import '../../../DataAccessLayer/Models/office.dart';

class OfficeRow extends StatelessWidget {
  const OfficeRow({Key? key, required this.office}) : super(key: key);
  final Office office;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.lightgrey,
                borderRadius: CustomStyles.raduis10,
                image: DecorationImage(
                    image: CachedNetworkImageProvider(office.logo))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                office.name,
                style: ThirdStyle,
              ),
              Text(
                office.city,
                style: ThirdStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
