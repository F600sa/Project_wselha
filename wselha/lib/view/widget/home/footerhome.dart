import 'package:flutter/material.dart';
//                     "وصلها شركة توصل لك شحنتك\n مع أقرب مسافر للمدينة\n اللي تبي توصل لها\n في وقت قياسي",

class FooterHome extends StatelessWidget {
  const FooterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 434,
      color: const Color.fromRGBO(44, 40, 40, 1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 100, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "تواصل معنا",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                SizedBox(
                  width: 660,
                ),
                Text(
                  "وصلها",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "data",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                    // color: Colors.amber,
                    child: Image.asset("assets/images/Vector.png"),
                  ),
                  const SizedBox(width: 550),
                  const Text(
                    "data",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                    // color: Colors.amber,
                    child: Image.asset("assets/images/telephone2.png"),
                  ),
                  const SizedBox(
                    height: 13,
                    // color: Colors.amber,
                    width: 350,
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "data",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                    // color: Colors.amber,
                    child: Image.asset("assets/images/Vector1.png"),
                  ),
                  const SizedBox(width: 550),
                  const Text(
                    "data",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                    // color: Colors.amber,
                    child: Image.asset("assets/images/email1.png"),
                  ),
                  const SizedBox(
                    height: 13,
                    // color: Colors.amber,
                    width: 350,
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "data",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                    // color: Colors.amber,
                    child: Image.asset("assets/images/instagram1.png"),
                  ),
                  const SizedBox(
                    height: 13,
                    // color: Colors.amber,
                    width: 975,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
