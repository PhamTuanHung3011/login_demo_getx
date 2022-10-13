import 'package:get/get.dart';

import '../controller/manager_product_controller.dart';

class ProductBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ManagerProductController>(() {
      return  ManagerProductController();
    } );
  }
}