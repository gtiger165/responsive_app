import 'package:get/get.dart';

import 'package:responsive_app/app/modules/home/controllers/featured_tile_controller.dart';
import 'package:responsive_app/app/modules/home/controllers/floating_quick_accessbar_controller.dart';
import 'package:responsive_app/app/modules/home/controllers/home_appbar_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeaturedTileController>(
      () => FeaturedTileController(),
    );
    Get.lazyPut<FloatingQuickAccessbarController>(
      () => FloatingQuickAccessbarController(),
    );
    Get.lazyPut<HomeAppbarController>(
      () => HomeAppbarController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
