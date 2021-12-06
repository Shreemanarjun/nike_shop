import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_shop/controllers/navcontroller.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({
    Key? key,
  }) : super(key: key);
  final NavController navcontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white.withOpacity(0.1),
        height: 60,
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: navcontroller.currentindex.value == 0 ? 9 : 0,
                  shape: const CircleBorder(),
                  primary: navcontroller.currentindex.value == 0
                      ? Colors.blueAccent.shade100
                      : Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/shoes_grey.png',
                      height: navcontroller.currentindex.value == 0 ? 35 : 30,
                      width: navcontroller.currentindex.value == 0 ? 35 : 30,
                    ),
                  ),
                ),
                onPressed: () {
                  if (navcontroller.currentindex.value != 0) {
                    navcontroller.currentindex.value = 0;
                  }
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: navcontroller.currentindex.value == 1 ? 9 : 0,
                  shape: const CircleBorder(),
                  primary: navcontroller.currentindex.value == 1
                      ? Colors.blueAccent.shade100
                      : Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/menu_grey.png',
                      height: navcontroller.currentindex.value == 1 ? 35 : 30,
                      width: navcontroller.currentindex.value == 1 ? 35 : 30,
                    ),
                  ),
                ),
                onPressed: () {
                  if (navcontroller.currentindex.value != 1) {
                    navcontroller.currentindex.value = 1;
                  }
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: navcontroller.currentindex.value == 2 ? 9 : 0,
                  shape: const CircleBorder(),
                  primary: navcontroller.currentindex.value == 2
                      ? Colors.blueAccent.shade100
                      : Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  if (navcontroller.currentindex.value != 2) {
                    navcontroller.currentindex.value = 2;
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/person_grey.png',
                      height: navcontroller.currentindex.value == 2 ? 35 : 30,
                      width: navcontroller.currentindex.value == 2 ? 35 : 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
