import 'package:get/get.dart';
import 'package:getx_with_mvvm/res/routes/routes_name.dart';
import 'package:getx_with_mvvm/view/login/login_view.dart';
import 'package:getx_with_mvvm/view/splash/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => SplashScreen(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(milliseconds: 250)),
        GetPage(
            name: RoutesName.loginView,
            page: () =>  LoginView(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(milliseconds: 250))
      ];
}
