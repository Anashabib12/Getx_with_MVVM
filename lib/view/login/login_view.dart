import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_mvvm/res/components/roundButton.dart';
import 'package:getx_with_mvvm/utils/utils.dart';
import 'package:getx_with_mvvm/view_models/controller/login_view_model.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final LoginViewModel loginController = Get.put(LoginViewModel());
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('Email', 'Enter email');
                      }
                      return null;
                    },
                    controller: loginController.emailController.value,
                    focusNode: loginController.emailFocusNode.value,
                    decoration: InputDecoration(
                        hintText: 'email_hint'.tr,
                        border: const OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('Password', 'Enter password');
                      }
                      return null;
                    },
                    controller: loginController.passwordController.value,
                    focusNode: loginController.passwordFocusNode.value,
                    decoration: const InputDecoration(
                        hintText: 'Enter password',
                        border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Obx(() => Roundbutton(
                  loading: loginController.loading.value,
                  title: 'Login',
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      loginController.loginApi();
                    }
                  },
                  width: 200,
                ))
          ],
        ),
      ),
    );
  }
}
