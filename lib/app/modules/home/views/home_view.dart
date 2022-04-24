import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_app/app/modules/home/views/featured_header_view.dart';
import 'package:responsive_app/app/modules/home/views/featured_tile_view.dart';
import 'package:responsive_app/app/modules/home/views/floating_quick_accessbar_view.dart';
import 'package:responsive_app/app/modules/home/views/home_appbar_view.dart';

import '../../../utils/screen_util.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: HomeAppbarView(),
        preferredSize: Size(getScreenSize(context).width, 1000),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              // image below the top bar
              child: SizedBox(
                height: getScreenSize(context).height * 0.45,
                width: getScreenSize(context).width,
                child: Image.asset(
                  'images/cover.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  heightFactor: 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: getScreenSize(context).height * 0.40,
                      left: getScreenSize(context).width / 5,
                      right: getScreenSize(context).width / 5,
                    ),
                    child: FloatingQuickAccessbarView(),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      FeaturedHeaderView(),
                      FeaturedTileView(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
