import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:nike_shop/pages/homepage/widgets/customnavbar.dart';
import 'package:nike_shop/pages/shoespage/widgets/sneakerproductlist.dart';

import 'widgets/salesproductlist.dart';
import 'widgets/sneakerheader.dart';

class ShoesPage extends StatelessWidget {
  ShoesPage({
    Key? key,
  }) : super(key: key);
  final shoescompany = ['Nike', 'Adidas', 'Puma', 'Hummel', 'Reebok', 'Skeche'];
  final currentselectedchip = "Nike".obs;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              child: customshoespageappbar(),
              preferredSize: const Size.fromHeight(70)),
          bottomNavigationBar: CustomNavBar(),
          body: ListView(
            shrinkWrap: true,
            children: [
              const SneakerHeader(),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: chiplist(context),
              ),
              const SneakerProductList(),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 24),
                child: Text(
                  "Sales",
                  style: GoogleFonts.getFont(
                    'Lato',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SalesProductList()
            ],
          ),
        ),
      ),
    );
  }

  SizedBox chiplist(BuildContext context) {
    return SizedBox(
      height: 40,
      width: Get.context!.width,
      child: Obx(() => ListView(
            padding: const EdgeInsets.only(left: 6),
            scrollDirection: Axis.horizontal,
            children: shoescompany
                .map((e) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: TextButton(
                        child: Text(
                          e,
                          style: GoogleFonts.getFont('Lato',
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      fontWeight: currentselectedchip.value == e
                                          ? FontWeight.w600
                                          : FontWeight.w400),
                              color: currentselectedchip.value == e
                                  ? Colors.indigo.shade700
                                  : Colors.grey.withOpacity(0.7)),
                        ),
                        onPressed: () {
                          currentselectedchip.value = e;
                        },
                      ),
                    ))
                .toList(),
          )),
    );
  }

  Widget customshoespageappbar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        width: Get.context!.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
            Expanded(
                child: SizedBox(
              height: 50,
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    size: 30,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      borderSide: BorderSide.none
                      //borderSide: const BorderSide(),
                      ),
                  filled: true,
                  fillColor: Colors.black12,
                ),
              ),
            )),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined))
          ],
        ),
      ),
    );
  }
}
