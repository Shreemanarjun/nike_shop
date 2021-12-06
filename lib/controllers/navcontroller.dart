import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nike_shop/pages/accountspage/accountspage.dart';
import 'package:nike_shop/pages/collectionpage/collectionpage.dart';
import 'package:nike_shop/pages/shoespage/shoes_page.dart';

class NavController extends GetxController {
  final PageController pageController = PageController();
  final currentindex = 0.obs;
  @override
  void onInit() {
    ever(currentindex, (_) {
      if (currentindex.value == 0) {
        Get.to(() => ShoesPage());
      } else if (currentindex.value == 1) {
        Get.to(() => const CollectionPage());
      } else {
        Get.to(() => const AccountsPage());
      }
    });
    super.onInit();
  }
}
