import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../Widgets/highlights_widgets.dart';
import '../../Widgets/drawer.dart';

class HighLightsScreen extends StatelessWidget {
  const HighLightsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Hero(
        tag: 'highlights_hero',
        child: Scaffold(
          backgroundColor: context.theme.backgroundColor,
          drawer: MyDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.dashboard_outlined,
                    size: 30,
                    color: AppColors.blue,
                  ));
            }),
            title: Text(
              'noble_realstate'.tr,
              style: const TextStyle(
                  color: Color(0XFF0C3877), fontSize: 20, fontFamily: "Cairo"),
            ),
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person.jpg"),
                  radius: 15,
                ),
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HighLightsTextfield(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: Text(
                  "ss".tr,
                  style:  Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              HighLightsBody()
            ],
          ),
        ),
      ),
    );
  }
}
