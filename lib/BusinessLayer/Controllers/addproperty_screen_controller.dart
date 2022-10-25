// ignore_for_file: avoid_print

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:noble/BusinessLayer/Controllers/cities_controller.dart';
import 'package:noble/BusinessLayer/Controllers/cladding_controller.dart';
import 'package:noble/BusinessLayer/Controllers/property_type_controller.dart';
import 'package:noble/BusinessLayer/helpers/image_helper.dart';
import 'package:noble/Constants/api_links.dart';
import 'package:noble/Constants/colors.dart';
import 'package:noble/Constants/font_styles.dart';
import 'package:noble/PresentationLayer/Widgets/snackbars.dart';

class AddPropertyController extends GetxController {
  final CitiesController citiesController = Get.find();
  final CladdingController claddingController = Get.find();
  final TypesController typesController = Get.find();
  List<DropdownMenuItem> citesitems = [];
  List<DropdownMenuItem> claddingitems = [];
  List<DropdownMenuItem> typesItems = [];
  List<DropdownMenuItem> optionsItems = [];

  late List<XFile> images = [];
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController desccontroller = TextEditingController();

  TextEditingController spacecontroller = TextEditingController();
  TextEditingController placecontroller = TextEditingController();
  TextEditingController adresscontroller = TextEditingController();
  TextEditingController roomscontroller = TextEditingController();
  TextEditingController salonscontroller = TextEditingController();
  TextEditingController bathscontroller = TextEditingController();
  TextEditingController floorcontroller = TextEditingController();
  TextEditingController floorscontroller = TextEditingController();
  TextEditingController directioncontroller = TextEditingController();
  TextEditingController claddingcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  int selectedCity = 0;
  int selectedPlace = 0;
  int selectedType = 0;
  int selectedOption = 0;
  int selectedCladding = 0;

  var hasElevator = false.obs;
  var hasGenerator = false.obs;
  var hasTerrace = false.obs;
  var hasConditioner = false.obs;
  var hasPool = false.obs;
  var hasSaona = false.obs;
  var hasGarag = false.obs;
  var hasShofag = false.obs;
  var hasJacuzzi = false.obs;
  var hasGarden = false.obs;

  var selectedRoom = 1.obs;
  Future<void> pickimages(context) async {
    final ImagePicker _picker = ImagePicker();
    images.addAll(await _picker.pickMultiImage());
    update();
    print(images);
  }

  void deleteImage(int index) {
    images.removeAt(index);
    update();
  }

  Future<void> send() async {
    SnackBars.successSnackbar(roomscontroller.value.text);
  }

late final BuildContext context;

 @override
  void onReady() {

    for (var item in citiesController.cities) {
      citesitems.add(DropdownMenuItem<String>(
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.blue,
              radius: 20,
              backgroundImage: CachedNetworkImageProvider(
                  ApiLinks.storageUrl + ImageHelper.buildImage(item.image)),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              item.name,
              style:Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
        value: item.name,
      ));
    }

    for (var item in claddingController.claddings) {
      claddingitems.add(DropdownMenuItem<dynamic>(
        child: Text(item.name, style: Theme.of(context).textTheme.titleSmall),
        value: item.name,
      ));
    }
    for (var item in typesController.types) {
      typesItems.add(DropdownMenuItem<dynamic>(
        child: Text(
          item.name,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        value: item.id,
      ));
    }
    optionsItems.add( DropdownMenuItem<dynamic>(
      child: Text(
        "بيع",
        style: Theme.of(context).textTheme.titleSmall,
      ),
      value: 0,
    ));
    optionsItems.add( DropdownMenuItem<dynamic>(
      child: Text(
        "إيجار",
        style: Theme.of(context).textTheme.titleSmall,
      ),
      value: 1,
    ));
    update();
    super.onReady();
  }
}
