import 'package:get/get.dart';

import '../controllers/fetch_list_controller.dart';

class FetchListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FetchListController>(
      () => FetchListController(),
    );
  }
}
