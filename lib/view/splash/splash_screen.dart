import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_mvvm/view/splash/splash_viewmodel.dart';
// import 'package:getx_with_mvvm/data/app_exceptions.dart';
// import 'package:getx_with_mvvm/res/assets/image_assets.dart';
// import 'package:getx_with_mvvm/res/components/roundButton.dart';
// import 'package:getx_with_mvvm/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('email_hint'.tr),
      // ),
      // // body: Image(image: AssetImage(ImageAssets.splashScreen)),
      // body: Roundbutton(
      //   title: 'login',
      //   onPressed: () {},
      // ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Utils.toastMessageCenter('Anas Khan');
      // }),

      backgroundColor: Colors.teal,
      body: Center(
        child: Text(
          'welcome_back'.tr,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
