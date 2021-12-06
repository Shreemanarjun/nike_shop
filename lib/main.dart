import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_shop/controllers/navcontroller.dart';

import 'package:nike_shop/pages/shoespage/shoes_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shoes Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: "/",
          page: () => ShoesPage(),
          binding: BindingsBuilder.put(() => NavController()),
        ),
      ],
      initialRoute: "/",
    );
  }
}
