// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../widget/home/appbar.dart';
import '../widget/home/bodyhome.dart';
import '../widget/home/footerhome.dart';
import '../widget/home/qu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome1,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 50,
            ),
            BodyHome(),
            QuHome(),
            FooterHome()
          ],
        ),
      ),
    );
  }
}
