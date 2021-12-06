import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:nike_shop/data/consts/dicoverlist.dart';
import 'package:nike_shop/pages/homepage/widgets/customnavbar.dart';

import 'widgets/featuredprodfuctlist.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: CustomNavBar(),
          body: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                height: Get.context!.height * 0.35,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40)),
                    image: DecorationImage(
                        image: const NetworkImage(
                          'https://cdn.dribbble.com/users/403631/screenshots/14912450/media/cf36aaf6944d0b7a3d1213e24187d092.jpg?compress=1&resize=900x600',
                        ),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.7),
                          BlendMode.dstATop,
                        ))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          )),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 24),
                child: Text(
                  "Featured",
                  style: GoogleFonts.getFont(
                    'Lato',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const FeaturedProductList(),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 0),
                child: Text(
                  "Discover",
                  style: GoogleFonts.getFont(
                    'Lato',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: Get.context!.height * 0.25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: discoverlist.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var discoveritem = discoverlist[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          elevation: 9,
                          borderRadius: BorderRadius.circular(16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              height: Get.context!.height * 0.2,
                              width: Get.context!.width * 0.6,
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.8),
                                    spreadRadius: 10,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.8),
                                        BlendMode.dstIn),
                                    fit: BoxFit.cover,
                                    image: NetworkImage(discoveritem.image)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, bottom: 12),
                                child: Text(
                                  discoveritem.text,
                                  style: GoogleFonts.getFont(
                                    'Lato',
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
