import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:nike_shop/data/consts/nikeproductlist.dart';
import 'package:simple_shadow/simple_shadow.dart';

class FeaturedProductList extends StatelessWidget {
  const FeaturedProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: Get.context!.height * 0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) {
            var product = nikeproducts[index];
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Material(
                    elevation: 9,
                    shadowColor: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        height: Get.context!.height * 0.25,
                        width: Get.context!.width * 0.35,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            '\$ ${product.price}',
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: index % 2 == 0
                              ? Colors.lime
                              : Colors.indigoAccent,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )),
                      child: Center(
                        child: Text(
                          index % 2 == 0 ? "20%" : "25%",
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 0,
                  top: 0,
                  left: 0,
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
                        height: Get.context!.height * 0.24,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          itemCount: nikeproducts.length,
        ),
      ),
    );
  }
}
