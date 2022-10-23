import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/category_screen_controller.dart';
import '../../../DataAccessLayer/Models/categories.dart';
import '../../Widgets/advertising/advertising_row.dart';
import '../../Widgets/center_progresss.dart';

import '../../Widgets/appbar.dart';
import '../../Widgets/drawer.dart';
import '../../Widgets/search_field.dart';
import '../../Widgets/title.dart';
import 'custom_botton_nav.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);
  final Category category = Get.arguments[0];
  final CategoriesScreenContoller contoller =
      Get.put(CategoriesScreenContoller(Get.arguments[0].id));
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        bottomNavigationBar: const CustomBottonNav(),
        backgroundColor: context.theme.backgroundColor,
        drawer: MyDrawer(),
        appBar: customAppBar(context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchField(),
            pageTitle(category.name, null),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: Get.height - 350,
                  width: double.infinity,
                  child: GetBuilder(
                      init: contoller,
                      builder: (_) {
                        return contoller.loading.value == true
                            ? centerProgress()
                            : ListView.builder(
                                itemCount: contoller.advertisings.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return AdvertisingRow(
                                    advertising: contoller.advertisings[index],
                                  );
                                },
                              );
                      }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
