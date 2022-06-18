import 'package:get/get.dart';

class Controller {
  static T start<T>(T Function() builder) {
    Get.lazyPut<T>(builder);
    return Get.find<T>();
  }

  static T stop<T>(T Function() builder) {
    Get.delete<T>();
    return Get.find<T>();
  }
}
