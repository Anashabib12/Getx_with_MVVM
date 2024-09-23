import 'package:get/get.dart';
import 'package:getx_with_mvvm/view_models/services/splash_services.dart';

class SplashController extends GetxController {
  SplashServices splashServices = SplashServices();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    splashServices.isLogin();
  }
}
