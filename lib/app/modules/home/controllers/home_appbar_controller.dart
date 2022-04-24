import 'package:get/get.dart';

class HomeAppbarController extends GetxController {
  var isHovering = [false, false, false, false].obs;

  void updateHoverOnIndex(int index, bool updatedValue) =>
      isHovering[index] = updatedValue;
}
