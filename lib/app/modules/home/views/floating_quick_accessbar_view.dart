import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_app/app/modules/home/controllers/floating_quick_accessbar_controller.dart';
import 'package:responsive_app/app/utils/screen_util.dart';

class FloatingQuickAccessbarView
    extends GetView<FloatingQuickAccessbarController> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.only(
          top: getScreenSize(context).height / 50,
          bottom: getScreenSize(context).height / 50,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: controller.generateRowElements(context),
        ),
      ),
    );
  }
}
