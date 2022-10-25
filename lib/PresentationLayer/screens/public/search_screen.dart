import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/search_screen_controller.dart';
import 'package:noble/Constants/font_styles.dart';
import 'package:noble/PresentationLayer/Widgets/properties/property_row.dart';

import '../../Widgets/appbar.dart';
import '../../Widgets/drawer.dart';

import '../../Widgets/title.dart';
import 'custom_botton_nav.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({
    Key? key,
  }) : super(key: key);
  final SearchScreenController searchcontroller =
      Get.put(SearchScreenController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: const CustomBottonNav(),
        backgroundColor: context.theme.backgroundColor,
        drawer: MyDrawer(),
        appBar: customAppBar(context),
        body: GetBuilder(
            init: searchcontroller,
            builder: (_) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autofocus: true,
                      autocorrect: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 5),
                          labelStyle: Theme.of(context).textTheme.titleSmall),
                      controller: searchcontroller.searchtext,
                      onChanged: (value) {
                        searchcontroller.search(value);
                      },
                    ),
                  ),
                  pageTitle("searchresult".tr, null),
                  SingleChildScrollView(
                    child: SizedBox(
                      width: double.infinity,
                      height: Get.height - 275,
                      child: ListView.builder(
                          itemCount: searchcontroller.searchreslut.length,
                          itemBuilder: (_, int index) {
                            return PropertyRow(
                                property: searchcontroller.searchreslut[index]);
                          }),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
