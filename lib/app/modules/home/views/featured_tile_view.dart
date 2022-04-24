import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_app/app/modules/home/controllers/featured_tile_controller.dart';
import 'package:responsive_app/app/utils/screen_util.dart';

class FeaturedTileView extends GetView<FeaturedTileController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getScreenSize(context).height * 0.06,
        left: getScreenSize(context).width / 15,
        right: getScreenSize(context).width / 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...Iterable<int>.generate(controller.assets.length).map(
            (pageIndex) => Column(
              children: [
                SizedBox(
                  height: getScreenSize(context).width / 6,
                  width: getScreenSize(context).width / 3.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      controller.assets[pageIndex],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: getScreenSize(context).height / 70),
                  child: Text(
                    controller.titles[pageIndex],
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color:
                          Theme.of(context).primaryTextTheme.subtitle1?.color,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
