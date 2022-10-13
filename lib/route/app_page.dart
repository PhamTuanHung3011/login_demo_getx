

import 'package:get/get.dart';
import 'package:login_demo_getx/controller/manager_product_controller.dart';
import 'package:login_demo_getx/screens/manager_screen/manager_screen.dart';

import '../binding/login_controller.dart';
import '../binding/manager_product_binding.dart';
import '../screens/root.dart';
import 'app_route.dart';

class AppPage {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => const Root(), binding: ControllerBindings()),
    GetPage(name: Routes.MANAGERPRODUCT, page: () =>  ManagerProductScreen(), binding: ProductBinding()),
  ];
}
