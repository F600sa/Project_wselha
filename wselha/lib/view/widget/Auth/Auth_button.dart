// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../text_utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const AuthButton({required this.onPressed, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            Get.isDarkMode ? Colors.black : Color.fromRGBO(216, 185, 25, 1),
        minimumSize: const Size(360, 50),
      ),
      child: TextUtils(
          color: Colors.white,
          text: text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          underline: TextDecoration.none),
    );
  }
}
