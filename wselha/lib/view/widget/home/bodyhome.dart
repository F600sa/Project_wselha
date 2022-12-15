// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wselha/view/screens/mandob.dart';
import 'package:wselha/view/screens/order.dart';

import '../../screens/homeScreen.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 50,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 300, right: 40, top: 100),
            child: Column(
              children: [
                const Text(
                  "شحناتك مع وصلها توصل أسرع",
                  style: TextStyle(
                      fontSize: 35, color: Color.fromRGBO(216, 185, 25, 1)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 350,
                  child: Text(
                    "نوصل لك شحنتك مع أقرب مسافر للمدينة اللي تبي توصل لها في وقت قياسي",
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // showDialog(
                    //     context: context,
                    //     builder: (ctx) => AlertDialog(
                    //         title: const Text("كيف اثق في المندوب؟"),
                    //         content: Order(),
                    //         actions: []));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(
                        216, 185, 25, 1), // Background color
                  ),
                  child: const Text(
                    "اشحن طلبك",
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 200,
          ),
          Image.asset("assets/images/car.png"),
        ],
      ),
      const SizedBox(
        height: 150,
      ),
      const Text(
        "كيف نستخدم وصلها؟",
        style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: "Hiragino Mincho ProN"),
      ),
      const SizedBox(
        height: 200,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/fast1.png"),
          const SizedBox(width: 200),
          Image.asset("assets/images/travel1.png"),
          const SizedBox(width: 200),
          Image.asset("assets/images/destination1.png"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "اشحن مع المسافر واضمن وصول\n طلبك بالوقت قياسي",
            style: TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(width: 150),
          Text(
            "تواصل مع المسافر ",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(width: 200),
          Text(
            "اختر الوجهه التي تود ارسال\n شحنتك لها",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      const SizedBox(
        height: 100,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Get.to(() => Mandob());
            },
            child: Container(
              color: const Color.fromRGBO(216, 185, 25, 1),
              width: 270,
              height: 254,
              child: Column(children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset("assets/images/delivery-man1.png"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "كن مندوب",
                  style: TextStyle(fontSize: 25),
                )
              ]),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => Order());
            },
            child: Container(
              color: const Color.fromRGBO(216, 185, 25, 1),
              width: 270,
              height: 254,
              child: Column(children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset("assets/images/delay1.png"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "اشحن طلبك  ",
                  style: TextStyle(fontSize: 25),
                )
              ]),
            ),
          )
        ],
      ),
    ]);
  }
}
