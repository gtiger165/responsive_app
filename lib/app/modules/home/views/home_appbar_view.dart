import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_app/app/modules/home/controllers/home_appbar_controller.dart';
import 'package:responsive_app/app/utils/screen_util.dart';

class HomeAppbarView extends GetView<HomeAppbarController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).bottomAppBarColor.withOpacity(0),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Text(
              'EXPLORE',
              style: GoogleFonts.montserrat(
                color: Colors.blueGrey[100],
                fontSize: 20,
                fontWeight: FontWeight.w400,
                letterSpacing: 3,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    onHover: (value) => controller.updateHoverOnIndex(0, value),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Obx(
                          () => Text(
                            'Discover',
                            style: TextStyle(
                              color: controller.isHovering[0]
                                  ? Colors.blue.shade200
                                  : Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Obx(
                          () => Visibility(
                            maintainAnimation: true,
                            maintainSize: true,
                            maintainState: true,
                            visible: controller.isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: getScreenSize(context).width / 20),
                  InkWell(
                    onTap: () {},
                    onHover: (value) => controller.updateHoverOnIndex(1, value),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Obx(
                          () => Text(
                            'Contact Us',
                            style: TextStyle(
                              color: controller.isHovering[1]
                                  ? Colors.blue.shade200
                                  : Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Obx(
                          () => Visibility(
                            maintainAnimation: true,
                            maintainSize: true,
                            maintainState: true,
                            visible: controller.isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              onHover: (value) => controller.updateHoverOnIndex(2, value),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Obx(
                    () => Text(
                      'Sign Up',
                      style: TextStyle(
                        color: controller.isHovering[2]
                            ? Colors.blue.shade200
                            : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Obx(
                    () => Visibility(
                      maintainAnimation: true,
                      maintainSize: true,
                      maintainState: true,
                      visible: controller.isHovering[2],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: getScreenSize(context).width / 50,
            ),
            InkWell(
              onTap: () {},
              onHover: (value) => controller.updateHoverOnIndex(3, value),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Obx(
                    () => Text(
                      'Login',
                      style: TextStyle(
                        color: controller.isHovering[3]
                            ? Colors.blue.shade200
                            : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Obx(
                    () => Visibility(
                      maintainAnimation: true,
                      maintainSize: true,
                      maintainState: true,
                      visible: controller.isHovering[3],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
