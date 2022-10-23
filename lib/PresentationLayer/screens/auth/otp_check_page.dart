import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../Widgets/login_widgets.dart';
import '../../Widgets/otp_widgets.dart';

class OtpCheckPage extends StatelessWidget {
  const OtpCheckPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: context.theme.backgroundColor,
          bottomNavigationBar: BottomCircle(
            text: 'verification'.tr,
            circleColor: AppColors.blue,
            textColor: Colors.white,
            fontSize: 25,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/messageOtp.png",
                        height: 190, width: 190),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "we_send_code".tr,
                          style: sendCodeStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 8.0, right: 20, left: 20),
                        child: Text("enter_the_code".tr, style: sendCodeStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 8.0, right: 20, left: 20),
                        child: Center(child: Verify()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.message,
                              color: Color(0XFF707070),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "re_sent_code".tr,
                              style: sendCodeStyle,
                            ),
                          ],
                        ),
                      ),
                    ]),
              ],
            ),
          )),
    );
  }
}
