import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/my_string.dart';
import '../../../logic/controller/auth_controller.dart';

import '../../widget/Auth/Auth_button.dart';
import '../../widget/Auth/auth_text_from_field.dart';
import '../../widget/text_utils.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final fromKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final controller = Get.put(AuthController());

// final controller =Get.put(authController());
// final controllers =Get.lazyPut(() => authController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
          elevation: 0,
        ),
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 120, left: 600, right: 600, bottom: 30),
            child: SizedBox(
              height: 800,
              width: 600,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 1.3,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 40),
                      child: Form(
                        key: fromKey,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextUtils(
                                    color: Get.isDarkMode
                                        ? Colors.black
                                        : Colors.black,
                                    text: "جديد ".tr,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    underline: TextDecoration.none),
                                const SizedBox(
                                  width: 3,
                                ),
                                TextUtils(
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                    text: "تسجيل".tr,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    underline: TextDecoration.none)
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            AuthTextFromField(
                              controller: nameController,
                              obscureText: false,
                              validator: (value) {
                                if (value.toString().length <= 2 ||
                                    !RegExp(validationName).hasMatch(value)) {
                                  return 'Enter valid name';
                                } else {
                                  return null;
                                }
                              },
                              prefixIcon: Get.isDarkMode
                                  ? const Icon(
                                      Icons.person,
                                      color: Colors.black,
                                      size: 30,
                                    )
                                  : Image.asset("assets/images/user.png"),
                              suffixIcon: const Text(""),
                              hintText: "User Name".tr,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            AuthTextFromField(
                              controller: emailController,
                              obscureText: false,
                              validator: (value) {
                                if (!RegExp(validationEmail).hasMatch(value)) {
                                  return 'Invalid email';
                                } else {
                                  return null;
                                }
                              },
                              prefixIcon: Get.isDarkMode
                                  ? const Icon(
                                      Icons.email,
                                      color: Colors.black,
                                      size: 30,
                                    )
                                  : Image.asset("assets/images/email.png"),
                              suffixIcon: const Text(""),
                              hintText: "Email".tr,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GetBuilder<AuthController>(builder: (_) {
                              return AuthTextFromField(
                                controller: passwordController,
                                obscureText:
                                    controller.isVisibilty ? false : true,
                                validator: (value) {
                                  if (value.toString().length < 6) {
                                    return 'Password should be longer or equal to 6 characters';
                                  } else {
                                    return null;
                                  }
                                },
                                prefixIcon: Get.isDarkMode
                                    ? const Icon(
                                        Icons.lock,
                                        color: Colors.black,
                                        size: 30,
                                      )
                                    : Image.asset("assets/images/lock.png"),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      controller.visibility();
                                    },
                                    icon: controller.isVisibilty
                                        ? const Icon(
                                            Icons.visibility,
                                            color: Colors.black,
                                          )
                                        : const Icon(
                                            Icons.visibility_off,
                                            color: Colors.black,
                                          )),
                                hintText: "Password".tr,
                              );
                            }),
                            const SizedBox(
                              height: 50,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            GetBuilder<AuthController>(builder: (_) {
                              return AuthButton(
                                onPressed: () {
                                  if (fromKey.currentState!.validate()) {
                                    String name = nameController.text.trim();
                                    String email = emailController.text.trim();
                                    String password = passwordController.text;
                                    controller.signUpUsingFirebase(
                                        name: name,
                                        email: email,
                                        password: password);
                                    controller.isCheckBox = true;
                                  }
                                },
                                text: "تسجيل ".tr,
                              );
                            })
                          ],
                        ),
                      ),
                    ),
                  ),
                  // ContainerUnder(
                  //   text: "Already have an Account? ".tr,
                  //   onPressed: () {
                  //     Get.offAllNamed(Routes.loginscreen);
                  //   },
                  //   textType: "Lognin".tr,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
