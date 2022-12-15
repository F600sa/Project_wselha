import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/homeScreen.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarHome1;
  }
}

// ignore: non_constant_identifier_names
final AppBarHome1 =
    AppBar(backgroundColor: const Color.fromRGBO(61, 57, 57, 1), actions: [
  TextButton(
    onPressed: () {},
    child: const Text(
      " حساب جديد",
      style: TextStyle(
          color: Color.fromRGBO(
            251,
            248,
            248,
            1,
          ),
          fontSize: 16),
    ),
  ),
  SizedBox(
    width: 150,
    height: 53,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor:
            const Color.fromRGBO(216, 185, 25, 1), // Background color
      ),
      child: const Text(
        "تسجيل الدخول",
        style: TextStyle(
            color: Color.fromRGBO(
              251,
              248,
              248,
              1,
            ),
            fontSize: 16),
      ),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text(
      "تواصل معنا",
      style: TextStyle(
          color: Color.fromRGBO(
            251,
            248,
            248,
            1,
          ),
          fontSize: 16),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text(
      "الاسئلة",
      style: TextStyle(
          color: Color.fromRGBO(
            251,
            248,
            248,
            1,
          ),
          fontSize: 16),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text(
      "الطلبات",
      style: TextStyle(
        color: Color.fromRGBO(255, 251, 251, 1),
        fontSize: 16,
      ),
    ),
  ),
  TextButton(
    onPressed: () {
      Get.to(() => HomeScreen());
    },
    child: const Text(
      "الرئيسية",
      style: TextStyle(
        color: Color.fromRGBO(255, 251, 251, 1),
        fontSize: 16,
      ),
    ),
  ),
  TextButton(
    onPressed: () {
      Get.to(() => HomeScreen());
    },
    child: const Text(
      "وصلها",
      style: TextStyle(color: Color.fromRGBO(255, 251, 251, 1), fontSize: 32),
    ),
  ),
]);
