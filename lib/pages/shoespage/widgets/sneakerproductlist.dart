import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:nike_shop/data/consts/nikeproductlist.dart';
import 'package:simple_shadow/simple_shadow.dart';

class SneakerProductList extends StatelessWidget {
  const SneakerProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.context!.height * 0.4,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        shrinkWrap: true,
        itemCount: nikeproducts.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var product = nikeproducts[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: Get.context!.height * 0.4,
              width: Get.context!.width * 0.6,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: Get.context!.height * 0.4,
                    width: Get.context!.width * 0.6,
                    decoration: BoxDecoration(
                        color: product.bgcolor.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              product.companyname,
                              style: GoogleFonts.getFont('Lato',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              product.productname,
                              style: GoogleFonts.getFont('Lato',
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '\$ ${product.price}',
                              style: GoogleFonts.getFont('Lato',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: -20,
                    bottom: 10,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(pi)..rotateZ(-25 * pi / 180),
                      child: SimpleShadow(
                        opacity: 0.6, // Default: 0.5
                        color: Colors.black, // Default: Black
                        offset: const Offset(-8, 8), // Default: Offset(2, 2)
                        sigma: 6,
                        child: Image.asset(
                          product.imagepath,
                          height: Get.context!.height * 0.3,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline,
                            size: 30,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
