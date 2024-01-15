import 'package:get/get.dart';

class HomeControler extends GetxController {
  static HomeControler get instance => Get.find();

  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }
}
