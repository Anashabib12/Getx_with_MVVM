import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_mvvm/repository/login_repository/login_repository.dart';
import 'package:getx_with_mvvm/utils/utils.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  final RxBool loading = false.obs;
  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value,
      'password': passwordController.value
    };
    _api.loginApi(data).then((value) {
      loading.value = false;

      Utils.snackBar('Login', 'Login Successfully');
    }).onError((error, stackTrace) {
      loading.value = false;
      print(error.toString());

      Utils.snackBar('Error', error.toString());
    });
  }
}
