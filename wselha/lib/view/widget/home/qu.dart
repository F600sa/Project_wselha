import 'package:flutter/material.dart';

class QuHome extends StatelessWidget {
  const QuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 400),
      child: Container(
        height: 992,
        width: double.infinity,
        color: const Color.fromRGBO(61, 57, 57, 1),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
                alignment: Alignment.topRight,
                height: 100,
                width: 1200,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  child: Text(
                    "الاسئلة الاكثر شيوعًا",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                )),
            const SizedBox(height: 50),
            Container(
                alignment: Alignment.topRight,
                height: 235.86,
                width: 896,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: const [
                      Text(
                        "كيف أثق في المندوب؟",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 150, top: 40),
                        child: Text(
                          "تقدر تشوف المندوب وتقيماته وتتبع طلبك",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.topRight,
              height: 135.36,
              width: 896,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: Colors.white, // <-- Button color
                        foregroundColor: const Color.fromRGBO(
                            216, 185, 25, 1), // <-- Splash color
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 30, right: 20),
                        child: Icon(Icons.arrow_back_ios,
                            size: 20, color: Color.fromRGBO(216, 185, 25, 1)),
                      ),
                    ),
                    const Text(
                      "كيف أضمن وصول الطلب؟",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.topRight,
              height: 135.36,
              width: 896,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: Colors.white, // <-- Button color
                        foregroundColor: const Color.fromRGBO(
                            216, 185, 25, 1), // <-- Splash color
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 30, right: 20),
                        child: Icon(Icons.arrow_back_ios,
                            size: 20, color: Color.fromRGBO(216, 185, 25, 1)),
                      ),
                    ),
                    const Text(
                      "كم مدة التوصيل؟",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.topRight,
              height: 135.36,
              width: 896,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: Colors.white, // <-- Button color
                        foregroundColor: const Color.fromRGBO(
                            216, 185, 25, 1), // <-- Splash color
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 30, right: 20),
                        child: Icon(Icons.arrow_back_ios,
                            size: 20, color: Color.fromRGBO(216, 185, 25, 1)),
                      ),
                    ),
                    const Text(
                      "كيف تصبح مندوب؟",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
