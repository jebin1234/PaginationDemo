import 'package:get/get.dart';

import '../controllers/pagination_demo_controller.dart';

class PaginationDemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaginationDemoController>(
      () => PaginationDemoController(),
    );
  }
}
