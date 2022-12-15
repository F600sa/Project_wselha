import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wselha/view/widget/text_utils.dart';

import '../../../logic/controller/auth_controller.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({super.key});
  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_) {
      return Row(
        children: [
          InkWell(
            onTap: () {
              controller.checkBox();
            },
            child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: controller.isCheckBox
                    ? Get.isDarkMode
                        ? const Icon(
                            Icons.done,
                            color: Colors.black,
                          )
                        : Image.asset('assets/images/check.png')
                    : Container()),
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              TextUtils(
                color: Get.isDarkMode ? Colors.white : Colors.black,
                text: "I accept ".tr,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                underline: TextDecoration.none,
              ),
              TextUtils(
                color: Get.isDarkMode ? Colors.white : Colors.black,
                text: "terms & conditions".tr,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                underline: TextDecoration.underline,
              ),
            ],
          )
        ],
      );
    });
  }
}
