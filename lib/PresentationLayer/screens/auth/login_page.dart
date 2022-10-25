// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:noble/BusinessLayer/Controllers/auth_controller.dart';
import 'package:noble/Constants/colors.dart';
import 'package:get/get.dart';
import 'package:noble/Constants/routes.dart';
import '../../../Constants/font_styles.dart';
import '../../Widgets/login_widgets.dart';

class LoginPage extends StatelessWidget {
  final AuthController controller = Get.find();

  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: BottomCircle(
          text: 'you_can_create_account'.tr,
          circleColor: const Color(0XFF707070).withOpacity(.2),
          textColor: const Color(0XFF707070),
          fontSize: 15,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text("login".tr, style: Theme.of(context).textTheme.headlineMedium),
                ),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200))),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "enter_your_phone_number".tr,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          controller: controller.phoneController,
                          style: const TextStyle(
                            color: AppColors.blue,
                          ),
                          cursorColor: AppColors.blue,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintTextDirection: TextDirection.ltr,
                              hintText: '09XXXXXXXX',
                              hintStyle:
                                  const TextStyle(color: Color(0XFFBEBEBE)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0XFFD5D5D5), width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0XFFD5D5D5), width: 1)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0XFFD5D5D5), width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0XFFD5D5D5), width: 1))),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                          maxLines: 1,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          controller.SendOtp();
                        },
                        child: Button(
                          text1: 'send_code'.tr,
                          buttonColor: AppColors.orange,
                          textColor: Colors.white,
                          loading: false,
                          loadingText: "",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.homepage);
                        },
                        child: Button(
                          text1: 'skip'.tr,
                          buttonColor: AppColors.lightgrey,
                          textColor: Colors.grey,
                          loading: false,
                          loadingText: "",
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
