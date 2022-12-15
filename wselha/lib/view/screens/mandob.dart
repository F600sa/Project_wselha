import 'package:flutter/material.dart';

import '../widget/home/appbar.dart';

class Mandob extends StatefulWidget {
  const Mandob({super.key});

  @override
  State<Mandob> createState() => _MandobState();
}

class _MandobState extends State<Mandob> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(61, 57, 57, 1),
      appBar: AppBarHome1,
      body: SafeArea(
          child: Center(
        child: Container(
          width: 911,
          height: 632,
          color: Colors.white,
          child: Column(
            children: [
              const Text(
                "مندوب",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 30,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Column(
                        children: const [
                          Text(
                            "االاسم",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'اكتب هنا',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "مدة التوصيل",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 300,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: DropdownButton(
                                value: dropdownvalue,
                                icon: Row(
                                  children: const [
                                    Text(
                                        "                                                         "),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "من مدينة",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 300,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: DropdownButton(
                              value: dropdownvalue,
                              icon: Row(
                                children: const [
                                  Text(
                                      "                                                         "),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                  ),
                                ],
                              ),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "إلى مدينة",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 300,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: DropdownButton(
                              value: dropdownvalue,
                              icon: Row(
                                children: const [
                                  Text(
                                      "                                                         "),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 126,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(216, 185, 25, 1)),
                  child: const Text(
                    "ارسل",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

String dropdownvalue = '٢٤ ساعة';

// List of items in our dropdown menu
var items = [
  '٢٤ ساعة',
  '٢٠ ساعة',
  '١٨ ساعة',
  '١٦ ساعة',
  '٨ ساعة',
];
