import 'package:get/get.dart';

class HomeController extends GetxController {
  var isHovering = [false, false, false, false].obs;

  void updateHoverOnIndex(int index, bool updatedValue) =>
      isHovering[index] = updatedValue;
}
