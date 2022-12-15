// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wselha/view/screens/Auth/signup_screen.dart';

import '../../../logic/controller/auth_controller.dart';
import '../../../utils/my_string.dart';
import '../../widget/Auth/Auth_button.dart';
import '../../widget/Auth/auth_text_from_field.dart';
import '../../widget/text_utils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final fromKey = GlobalKey<FormState>();
  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(61, 57, 57, 1),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 120, left: 600, right: 600, bottom: 30),
        child: Column(
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Form(
                key: fromKey,
                child: Container(
                  // height: 708,
                  // color: Colors.,
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextUtils(
                              color:
                                  Get.isDarkMode ? Colors.black : Colors.black,
                              text: "تسجيل".tr,
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              underline: TextDecoration.none),
                          const SizedBox(
                            width: 3,
                          ),
                          TextUtils(
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
                              text: "الدخول".tr,
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              underline: TextDecoration.none)
                        ],
                      ),
                      const SizedBox(
                        height: 50,
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
                                color: Colors.amber,
                                size: 30,
                              )
                            : Icon(Icons.email),
                        suffixIcon: const Text(""),
                        hintText: "البريد الاكتروني".tr,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return AuthTextFromField(
                          controller: passwordController,
                          obscureText: controller.isVisibilty ? false : true,
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
                                  color: Colors.amber,
                                  size: 30,
                                )
                              : Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.visibility();
                            },
                            icon: controller.isVisibilty
                                ? const Icon(
                                    Icons.visibility_off,
                                    color: Colors.black,
                                  )
                                : const Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                  ),
                          ),
                          hintText: " كلمة المرور".tr,
                        );
                      }),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              // Get.toNamed(Routes.forgotPasswordScreen);
                            },
                            child: TextUtils(
                              text: "نسيت كلمة المرور؟".tr,
                              fontSize: 14,
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
                              underline: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                            )),
                      ),

                      const SizedBox(
                        height: 50,
                      ),

                      // CheckWidget(),
                      const SizedBox(
                        height: 50,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return AuthButton(
                          onPressed: () {
                            if (fromKey.currentState!.validate()) {
                              String email = emailController.text.trim();
                              String password = passwordController.text;

                              controller.logInUsingFirebase(
                                  email: email, password: password);
                            }
                          },
                          text: "تسجيل دخول".tr,
                        );
                      }),
                      const SizedBox(
                        height: 20,
                      ),

                      TextUtils(
                          color: Get.isDarkMode ? Colors.white : Colors.black,
                          text: "OR".tr,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          underline: TextDecoration.none),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Image.asset("assets/images/facebook.png")),
                          const SizedBox(
                            width: 10,
                          ),
                          GetBuilder<AuthController>(builder: (_) {
                            return InkWell(
                                onTap: () {
                                  controller.googleSingUpApp();
                                },
                                child: Image.asset("assets/images/google.png"));
                          })
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(SignUpScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(
                                216, 185, 25, 1), // Background color
                          ),
                          child: Text("تسجيل حساب جديد")),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
