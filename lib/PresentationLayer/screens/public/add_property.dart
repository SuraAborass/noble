// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Controllers/addproperty_screen_controller.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/PresentationLayer/Widgets/appbar.dart';
import 'package:noble/PresentationLayer/Widgets/login_widgets.dart';
import 'package:noble/PresentationLayer/Widgets/text_fields.dart';

import '../../../Constants/custom_styles.dart';
import '../../../Constants/font_styles.dart';
import '../../Widgets/drawer.dart';
import '../../Widgets/title.dart';
import 'custom_botton_nav.dart';

class AddPropertyScreen extends StatelessWidget {
  AddPropertyScreen({Key? key}) : super(key: key);

  final AddPropertyController addPropertyController =
      Get.put(AddPropertyController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: customAppBar(context),
        drawer: MyDrawer(),
        bottomNavigationBar: const CustomBottonNav(),
        body: GetBuilder<AddPropertyController>(
            init: addPropertyController,
            builder: (context) {
              return Column(
                children: [
                  pageTitle("addnewproperty".tr, null),
                  SizedBox(
                    height: Get.height - 250,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                addPropertyController.pickimages(context);
                              },
                              child: Button(
                                  text1: "addimages".tr,
                                  buttonColor: AppColors.blue2,
                                  textColor: Colors.white,
                                  loading: false,
                                  loadingText: ""),
                            ),
                            if (addPropertyController.images.isNotEmpty)
                              SizedBox(
                                height: 100,
                                width: double.infinity,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      addPropertyController.images.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Stack(
                                        children: [
                                          Image.file(
                                            File(addPropertyController
                                                .images[index].path),
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                          ),
                                          Positioned(
                                            bottom: 1,
                                            right: -5,
                                            child: IconButton(
                                                onPressed: () {
                                                  addPropertyController
                                                      .deleteImage(index);
                                                },
                                                icon: const Icon(
                                                  Icons.delete,
                                                  color: Colors.red,
                                                )),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            PropertyTextfield(
                                controller: null,
                                hint: "titlehint".tr,
                                label: "title".tr),
                            PropertyTextfield(
                                controller: null,
                                hint: "p_options".tr,
                                label: "p_options".tr),
                            PropertyTextfield(
                                controller: null, hint: "", label: "desc".tr),
                            PropertyTextfield(
                                controller: null,
                                hint: "".tr,
                                label: "price".tr),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "p_type".tr,
                                  style: SecondStyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField<dynamic>(
                                    alignment: AlignmentDirectional.centerStart,
                                    value: 1,
                                    decoration: CustomStyles.dropdownWhite,
                                    isExpanded: true,
                                    items: addPropertyController.typesItems,
                                    onChanged: (value) {}),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "p_options".tr,
                                  style: SecondStyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField<dynamic>(
                                    alignment: AlignmentDirectional.centerStart,
                                    value: 1,
                                    decoration: CustomStyles.dropdownWhite,
                                    isExpanded: true,
                                    items: addPropertyController.optionsItems,
                                    onChanged: (value) {
                                      addPropertyController.selectedOption =
                                          value;
                                    }),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "p_type".tr,
                                  style: SecondStyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField<dynamic>(
                                    alignment: AlignmentDirectional.centerStart,
                                    value: 1,
                                    decoration: CustomStyles.dropdownWhite,
                                    isExpanded: true,
                                    items: addPropertyController.typesItems,
                                    onChanged: (value) {
                                      addPropertyController.selectedType =
                                          value;
                                    }),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "city".tr,
                                  style: SecondStyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField<dynamic>(
                                    alignment: AlignmentDirectional.centerStart,
                                    value: "دمشق",
                                    decoration: CustomStyles.dropdownWhite,
                                    isExpanded: true,
                                    items: addPropertyController.citesitems,
                                    onChanged: (value) {
                                      addPropertyController.selectedType =
                                          value;
                                    }),
                              ],
                            ),
                            PropertyTextfield(
                                label: "p_adress".tr,
                                hint: "",
                                controller:
                                    addPropertyController.adresscontroller),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "cladding".tr,
                                  style: SecondStyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField<dynamic>(
                                    value: "سوبر ديلوكس",
                                    decoration: CustomStyles.dropdownWhite,
                                    items: addPropertyController.claddingitems,
                                    onChanged: (vaue) {
                                      print(vaue);
                                    }),
                              ],
                            ),
                            RowButtons(
                              text: "rooms".tr,
                              controller: addPropertyController.roomscontroller,
                            ),
                            RowButtons(
                              text: "p_salons".tr,
                              controller:
                                  addPropertyController.salonscontroller,
                            ),
                            RowButtons(
                              text: "p_baths".tr,
                              controller: addPropertyController.bathscontroller,
                            ),
                            RowButtons(
                              text: "p_floor".tr,
                              controller: addPropertyController.floorcontroller,
                            ),
                            RowButtons(
                              text: "p_floors".tr,
                              controller:
                                  addPropertyController.floorscontroller,
                            ),
                            secondryTitle("Other Properties : "),
                            Obx(() {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          child: propertyCheck(
                                              "mesaad".tr,
                                              addPropertyController.hasElevator,
                                              addPropertyController)),
                                      Expanded(
                                        child: propertyCheck(
                                            "moaldeh".tr,
                                            addPropertyController.hasGenerator,
                                            addPropertyController),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: propertyCheck(
                                            "terras".tr,
                                            addPropertyController.hasTerrace,
                                            addPropertyController),
                                      ),
                                      Expanded(
                                        child: propertyCheck(
                                            "pool".tr,
                                            addPropertyController.hasPool,
                                            addPropertyController),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: propertyCheck(
                                            "mokaiif".tr,
                                            addPropertyController
                                                .hasConditioner,
                                            addPropertyController),
                                      ),
                                      Expanded(
                                        child: propertyCheck(
                                            "saona".tr,
                                            addPropertyController.hasSaona,
                                            addPropertyController),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: propertyCheck(
                                            "carage".tr,
                                            addPropertyController.hasGarag,
                                            addPropertyController),
                                      ),
                                      Expanded(
                                        child: propertyCheck(
                                            "shofag".tr,
                                            addPropertyController.hasShofag,
                                            addPropertyController),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: propertyCheck(
                                            "jakoozy".tr,
                                            addPropertyController.hasJacuzzi,
                                            addPropertyController),
                                      ),
                                      Expanded(
                                        child: propertyCheck(
                                            "garden".tr,
                                            addPropertyController.hasGarden,
                                            addPropertyController),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            }),
                            const SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () async {
                                await addPropertyController.send();
                              },
                              child: Button(
                                  text1: "submitforreview".tr,
                                  buttonColor: AppColors.orange,
                                  textColor: Colors.white,
                                  loading: false,
                                  loadingText: ""),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}

Widget propertyCheck(String title, RxBool value, controller) {
  return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: const EdgeInsets.all(0),
      activeColor: AppColors.orange,
      title: Text(
        title,
        style: thirdly,
      ),
      value: value.value,
      onChanged: (bool? bool) {
        value.value = bool!;
      });
}

class RowButtons extends StatefulWidget {
  const RowButtons({Key? key, required this.text, this.controller})
      : super(key: key);

  final String text;
  final TextEditingController? controller;

  @override
  State<RowButtons> createState() => _RowButtonsState();
}

class _RowButtonsState extends State<RowButtons> {
  int selectedindex = 0;
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: SecondStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selected = true;
                      selectedindex = index;
                      widget.controller!.value =
                          TextEditingValue(text: (index + 1).toString());
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 30,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: selectedindex == index && selected
                            ? AppColors.blue
                            : Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                            color: selectedindex == index && selected
                                ? AppColors.blue2
                                : AppColors.orange,
                            width: 1)),
                    child: Center(
                      child: Text(
                        (index + 1).toString(),
                        style: selectedindex == index && selected
                            ? secondly
                            : FirstStyle,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
